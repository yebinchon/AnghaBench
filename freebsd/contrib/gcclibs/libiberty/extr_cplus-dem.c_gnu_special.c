
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int destructor; } ;
typedef int string ;


 int ISDIGIT (unsigned char) ;
 char const* SCOPE_STRING (struct work_stuff*) ;
 int consume_count (char const**) ;
 char* cplus_markers ;
 int demangle_qualified (struct work_stuff*,char const**,int *,int ,int) ;
 int demangle_template (struct work_stuff*,char const**,int *,int ,int,int) ;
 int do_type (struct work_stuff*,char const**,int *) ;
 int free (char*) ;
 char* internal_cplus_demangle (struct work_stuff*,char const*) ;
 int sprintf (char*,char*,int) ;
 int * strchr (char*,char const) ;
 int strcspn (char const*,char*) ;
 int string_append (int *,char const*) ;
 int string_appendn (int *,char const*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strpbrk (char const*,char*) ;

__attribute__((used)) static int
gnu_special (struct work_stuff *work, const char **mangled, string *declp)
{
  int n;
  int success = 1;
  const char *p;

  if ((*mangled)[0] == '_'
      && strchr (cplus_markers, (*mangled)[1]) != ((void*)0)
      && (*mangled)[2] == '_')
    {

      (*mangled) += 3;
      work -> destructor += 1;
    }
  else if ((*mangled)[0] == '_'
    && (((*mangled)[1] == '_'
  && (*mangled)[2] == 'v'
  && (*mangled)[3] == 't'
  && (*mangled)[4] == '_')
        || ((*mangled)[1] == 'v'
     && (*mangled)[2] == 't'
     && strchr (cplus_markers, (*mangled)[3]) != ((void*)0))))
    {




      if ((*mangled)[2] == 'v')
 (*mangled) += 5;
      else
 (*mangled) += 4;
      while (**mangled != '\0')
 {
   switch (**mangled)
     {
     case 'Q':
     case 'K':
       success = demangle_qualified (work, mangled, declp, 0, 1);
       break;
     case 't':
       success = demangle_template (work, mangled, declp, 0, 1,
        1);
       break;
     default:
       if (ISDIGIT((unsigned char)*mangled[0]))
  {
    n = consume_count(mangled);




    if (n > (int) strlen (*mangled))
      {
        success = 1;
        break;
      }
  }
       else
  {
    n = strcspn (*mangled, cplus_markers);
  }
       string_appendn (declp, *mangled, n);
       (*mangled) += n;
     }

   p = strpbrk (*mangled, cplus_markers);
   if (success && ((p == ((void*)0)) || (p == *mangled)))
     {
       if (p != ((void*)0))
  {
    string_append (declp, SCOPE_STRING (work));
    (*mangled)++;
  }
     }
   else
     {
       success = 0;
       break;
     }
 }
      if (success)
 string_append (declp, " virtual table");
    }
  else if ((*mangled)[0] == '_'
    && (strchr("0123456789Qt", (*mangled)[1]) != ((void*)0))
    && (p = strpbrk (*mangled, cplus_markers)) != ((void*)0))
    {

      (*mangled)++;
      switch (**mangled)
 {
 case 'Q':
 case 'K':
   success = demangle_qualified (work, mangled, declp, 0, 1);
   break;
 case 't':
   success = demangle_template (work, mangled, declp, 0, 1, 1);
   break;
 default:
   n = consume_count (mangled);
   if (n < 0 || n > (long) strlen (*mangled))
     {
       success = 0;
       break;
     }

   if (n > 10 && strncmp (*mangled, "_GLOBAL_", 8) == 0
       && (*mangled)[9] == 'N'
       && (*mangled)[8] == (*mangled)[10]
       && strchr (cplus_markers, (*mangled)[8]))
     {




       string_append (declp, "{anonymous}");
       (*mangled) += n;



       p = strpbrk (*mangled, cplus_markers);
       break;
     }

   string_appendn (declp, *mangled, n);
   (*mangled) += n;
 }
      if (success && (p == *mangled))
 {


   (*mangled)++;
   string_append (declp, SCOPE_STRING (work));
   n = strlen (*mangled);
   string_appendn (declp, *mangled, n);
   (*mangled) += n;
 }
      else
 {
   success = 0;
 }
    }
  else if (strncmp (*mangled, "__thunk_", 8) == 0)
    {
      int delta;

      (*mangled) += 8;
      delta = consume_count (mangled);
      if (delta == -1)
 success = 0;
      else
 {
   char *method = internal_cplus_demangle (work, ++*mangled);

   if (method)
     {
       char buf[50];
       sprintf (buf, "virtual function thunk (delta:%d) for ", -delta);
       string_append (declp, buf);
       string_append (declp, method);
       free (method);
       n = strlen (*mangled);
       (*mangled) += n;
     }
   else
     {
       success = 0;
     }
 }
    }
  else if (strncmp (*mangled, "__t", 3) == 0
    && ((*mangled)[3] == 'i' || (*mangled)[3] == 'f'))
    {
      p = (*mangled)[3] == 'i' ? " type_info node" : " type_info function";
      (*mangled) += 4;
      switch (**mangled)
 {
 case 'Q':
 case 'K':
   success = demangle_qualified (work, mangled, declp, 0, 1);
   break;
 case 't':
   success = demangle_template (work, mangled, declp, 0, 1, 1);
   break;
 default:
   success = do_type (work, mangled, declp);
   break;
 }
      if (success && **mangled != '\0')
 success = 0;
      if (success)
 string_append (declp, p);
    }
  else
    {
      success = 0;
    }
  return (success);
}
