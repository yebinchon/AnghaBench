
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct work_stuff {int constructor; int destructor; int numk; char** ktypevec; } ;
struct TYPE_17__ {int b; } ;
typedef TYPE_1__ string ;


 scalar_t__ EDG_DEMANGLING ;
 int LEN_STRING (TYPE_1__*) ;
 char* SCOPE_STRING (struct work_stuff*) ;
 int STRING_EMPTY (TYPE_1__*) ;
 int atoi (char*) ;
 int consume_count (char const**) ;
 int consume_count_with_underscores (char const**) ;
 int demangle_template (struct work_stuff*,char const**,TYPE_1__*,TYPE_1__*,int,int ) ;
 int do_type (struct work_stuff*,char const**,TYPE_1__*) ;
 int recursively_demangle (struct work_stuff*,char const**,TYPE_1__*,int) ;
 int register_Btype (struct work_stuff*) ;
 int remember_Btype (struct work_stuff*,int ,int ,int) ;
 int remember_Ktype (struct work_stuff*,int ,int ) ;
 int string_append (TYPE_1__*,char*) ;
 int string_appends (TYPE_1__*,TYPE_1__*) ;
 int string_clear (TYPE_1__*) ;
 int string_delete (TYPE_1__*) ;
 int string_init (TYPE_1__*) ;
 int string_prepends (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
demangle_qualified (struct work_stuff *work, const char **mangled,
                    string *result, int isfuncname, int append)
{
  int qualifiers = 0;
  int success = 1;
  char num[2];
  string temp;
  string last_name;
  int bindex = register_Btype (work);



  isfuncname = (isfuncname
  && ((work->constructor & 1) || (work->destructor & 1)));

  string_init (&temp);
  string_init (&last_name);

  if ((*mangled)[0] == 'K')
    {

      int idx;
      (*mangled)++;
      idx = consume_count_with_underscores (mangled);
      if (idx == -1 || idx >= work -> numk)
        success = 0;
      else
        string_append (&temp, work -> ktypevec[idx]);
    }
  else
    switch ((*mangled)[1])
    {
    case '_':



      (*mangled)++;
      qualifiers = consume_count_with_underscores (mangled);
      if (qualifiers == -1)
 success = 0;
      break;

    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':

      num[0] = (*mangled)[1];
      num[1] = '\0';
      qualifiers = atoi (num);




      if ((*mangled)[2] == '_')
 {
   (*mangled)++;
 }
      (*mangled) += 2;
      break;

    case '0':
    default:
      success = 0;
    }

  if (!success)
    return success;




  while (qualifiers-- > 0)
    {
      int remember_K = 1;
      string_clear (&last_name);

      if (*mangled[0] == '_')
 (*mangled)++;

      if (*mangled[0] == 't')
 {






   success = demangle_template(work, mangled, &temp,
          &last_name, 1, 0);
   if (!success)
     break;
 }
      else if (*mangled[0] == 'K')
 {
          int idx;
          (*mangled)++;
          idx = consume_count_with_underscores (mangled);
          if (idx == -1 || idx >= work->numk)
            success = 0;
          else
            string_append (&temp, work->ktypevec[idx]);
          remember_K = 0;

   if (!success) break;
 }
      else
 {
   if (EDG_DEMANGLING)
            {
       int namelength;



       namelength = consume_count (mangled);
       if (namelength == -1)
  {
    success = 0;
    break;
  }
        recursively_demangle(work, mangled, &temp, namelength);
            }
          else
            {
              string_delete (&last_name);
              success = do_type (work, mangled, &last_name);
              if (!success)
                break;
              string_appends (&temp, &last_name);
            }
 }

      if (remember_K)
 remember_Ktype (work, temp.b, LEN_STRING (&temp));

      if (qualifiers > 0)
 string_append (&temp, SCOPE_STRING (work));
    }

  remember_Btype (work, temp.b, LEN_STRING (&temp), bindex);






  if (isfuncname)
    {
      string_append (&temp, SCOPE_STRING (work));
      if (work -> destructor & 1)
 string_append (&temp, "~");
      string_appends (&temp, &last_name);
    }




  if (append)
    string_appends (result, &temp);
  else
    {
      if (!STRING_EMPTY (result))
 string_append (&temp, SCOPE_STRING (work));
      string_prepends (result, &temp);
    }

  string_delete (&last_name);
  string_delete (&temp);
  return (success);
}
