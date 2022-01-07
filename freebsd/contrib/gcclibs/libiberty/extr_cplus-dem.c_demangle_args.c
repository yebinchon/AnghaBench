
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {scalar_t__ nrepeats; int ntypes; char** typevec; } ;
typedef int string ;


 scalar_t__ ARM_DEMANGLING ;
 scalar_t__ EDG_DEMANGLING ;
 scalar_t__ HP_DEMANGLING ;
 scalar_t__ LUCID_DEMANGLING ;
 scalar_t__ PRINT_ARG_TYPES ;
 int consume_count (char const**) ;
 int do_arg (struct work_stuff*,char const**,int *) ;
 int get_count (char const**,int*) ;
 int string_append (int *,char*) ;
 int string_appends (int *,int *) ;
 int string_delete (int *) ;

__attribute__((used)) static int
demangle_args (struct work_stuff *work, const char **mangled,
               string *declp)
{
  string arg;
  int need_comma = 0;
  int r;
  int t;
  const char *tem;
  char temptype;

  if (PRINT_ARG_TYPES)
    {
      string_append (declp, "(");
      if (**mangled == '\0')
 {
   string_append (declp, "void");
 }
    }

  while ((**mangled != '_' && **mangled != '\0' && **mangled != 'e')
  || work->nrepeats > 0)
    {
      if ((**mangled == 'N') || (**mangled == 'T'))
 {
   temptype = *(*mangled)++;

   if (temptype == 'N')
     {
       if (!get_count (mangled, &r))
  {
    return (0);
  }
     }
   else
     {
       r = 1;
     }
          if ((HP_DEMANGLING || ARM_DEMANGLING || EDG_DEMANGLING) && work -> ntypes >= 10)
            {






              if ((t = consume_count(mangled)) <= 0)
                {
                  return (0);
                }
            }
          else
     {
       if (!get_count (mangled, &t))
      {
           return (0);
      }
     }
   if (LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
     {
       t--;
     }


   if ((t < 0) || (t >= work -> ntypes))
     {
       return (0);
     }
   while (work->nrepeats > 0 || --r >= 0)
     {
       tem = work -> typevec[t];
       if (need_comma && PRINT_ARG_TYPES)
  {
    string_append (declp, ", ");
  }
       if (!do_arg (work, &tem, &arg))
  {
    return (0);
  }
       if (PRINT_ARG_TYPES)
  {
    string_appends (declp, &arg);
  }
       string_delete (&arg);
       need_comma = 1;
     }
 }
      else
 {
   if (need_comma && PRINT_ARG_TYPES)
     string_append (declp, ", ");
   if (!do_arg (work, mangled, &arg))
     return (0);
   if (PRINT_ARG_TYPES)
     string_appends (declp, &arg);
   string_delete (&arg);
   need_comma = 1;
 }
    }

  if (**mangled == 'e')
    {
      (*mangled)++;
      if (PRINT_ARG_TYPES)
 {
   if (need_comma)
     {
       string_append (declp, ",");
     }
   string_append (declp, "...");
 }
    }

  if (PRINT_ARG_TYPES)
    {
      string_append (declp, ")");
    }
  return (1);
}
