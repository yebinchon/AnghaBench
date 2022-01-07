
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int static_type; scalar_t__ type_quals; int temp_start; int destructor; int constructor; } ;
typedef int string ;


 int APPEND_BLANK (int *) ;
 scalar_t__ ARM_DEMANGLING ;
 scalar_t__ AUTO_DEMANGLING ;
 scalar_t__ EDG_DEMANGLING ;
 scalar_t__ GNU_DEMANGLING ;
 int HP_DEMANGLING ;
 int ISDIGIT (unsigned char) ;
 scalar_t__ LUCID_DEMANGLING ;
 scalar_t__ PRINT_ARG_TYPES ;
 char* SCOPE_STRING (struct work_stuff*) ;
 scalar_t__ TYPE_UNQUALIFIED ;
 scalar_t__ code_for_qualifier (char const) ;
 int demangle_args (struct work_stuff*,char const**,int *) ;
 int demangle_class (struct work_stuff*,char const**,int *) ;
 int demangle_qualified (struct work_stuff*,char const**,int *,int,int ) ;
 int demangle_template (struct work_stuff*,char const**,int *,int *,int,int) ;
 int do_type (struct work_stuff*,char const**,int *) ;
 int forget_types (struct work_stuff*) ;
 char* qualifier_string (scalar_t__) ;
 int remember_type (struct work_stuff*,char const*,int) ;
 int string_append (int *,char*) ;
 int string_appends (int *,int *) ;
 int string_delete (int *) ;
 int string_init (int *) ;
 int string_prepend (int *,char*) ;
 int string_prepends (int *,int *) ;

__attribute__((used)) static int
demangle_signature (struct work_stuff *work,
                    const char **mangled, string *declp)
{
  int success = 1;
  int func_done = 0;
  int expect_func = 0;
  int expect_return_type = 0;
  const char *oldmangled = ((void*)0);
  string trawname;
  string tname;

  while (success && (**mangled != '\0'))
    {
      switch (**mangled)
 {
 case 'Q':
   oldmangled = *mangled;
   success = demangle_qualified (work, mangled, declp, 1, 0);
   if (success)
     remember_type (work, oldmangled, *mangled - oldmangled);
   if (AUTO_DEMANGLING || GNU_DEMANGLING)
     expect_func = 1;
   oldmangled = ((void*)0);
   break;

        case 'K':
   oldmangled = *mangled;
   success = demangle_qualified (work, mangled, declp, 1, 0);
   if (AUTO_DEMANGLING || GNU_DEMANGLING)
     {
       expect_func = 1;
     }
   oldmangled = ((void*)0);
   break;

 case 'S':

   if (oldmangled == ((void*)0))
     {
       oldmangled = *mangled;
     }
   (*mangled)++;
   work -> static_type = 1;
   break;

 case 'C':
 case 'V':
 case 'u':
   work->type_quals |= code_for_qualifier (**mangled);


   if (oldmangled == ((void*)0))
     oldmangled = *mangled;
   (*mangled)++;
   break;

 case 'L':

   if (HP_DEMANGLING)
     {
       while (**mangled && (**mangled != '_'))
  (*mangled)++;
       if (!**mangled)
  success = 0;
       else
  (*mangled)++;
     }
   else
     success = 0;
   break;

 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
   if (oldmangled == ((void*)0))
     {
       oldmangled = *mangled;
     }
          work->temp_start = -1;
   success = demangle_class (work, mangled, declp);
   if (success)
     {
       remember_type (work, oldmangled, *mangled - oldmangled);
     }
   if (AUTO_DEMANGLING || GNU_DEMANGLING || EDG_DEMANGLING)
     {


              if (**mangled != 'F')
                 expect_func = 1;
     }
   oldmangled = ((void*)0);
   break;

 case 'B':
   {
     string s;
     success = do_type (work, mangled, &s);
     if (success)
       {
  string_append (&s, SCOPE_STRING (work));
  string_prepends (declp, &s);
  string_delete (&s);
       }
     oldmangled = ((void*)0);
     expect_func = 1;
   }
   break;

 case 'F':






   oldmangled = ((void*)0);
   func_done = 1;
   (*mangled)++;






   if (LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
     {
       forget_types (work);
     }
   success = demangle_args (work, mangled, declp);



   if (success && (AUTO_DEMANGLING || EDG_DEMANGLING) && **mangled == '_')
     {
       ++(*mangled);

              success = do_type (work, mangled, &tname);
              string_delete (&tname);
            }

   break;

 case 't':

   string_init(&trawname);
   string_init(&tname);
   if (oldmangled == ((void*)0))
     {
       oldmangled = *mangled;
     }
   success = demangle_template (work, mangled, &tname,
           &trawname, 1, 1);
   if (success)
     {
       remember_type (work, oldmangled, *mangled - oldmangled);
     }
   string_append (&tname, SCOPE_STRING (work));

   string_prepends(declp, &tname);
   if (work -> destructor & 1)
     {
       string_prepend (&trawname, "~");
       string_appends (declp, &trawname);
       work->destructor -= 1;
     }
   if ((work->constructor & 1) || (work->destructor & 1))
     {
       string_appends (declp, &trawname);
       work->constructor -= 1;
     }
   string_delete(&trawname);
   string_delete(&tname);
   oldmangled = ((void*)0);
   expect_func = 1;
   break;

 case '_':
   if ((AUTO_DEMANGLING || GNU_DEMANGLING) && expect_return_type)
     {

       string return_type;

       (*mangled)++;
       success = do_type (work, mangled, &return_type);
       APPEND_BLANK (&return_type);

       string_prepends (declp, &return_type);
       string_delete (&return_type);
       break;
     }
   else
            if (HP_DEMANGLING)
              {
                (*mangled)++;
                while (**mangled && ISDIGIT ((unsigned char)**mangled))
                  (*mangled)++;
              }
            else
       success = 0;
   break;

 case 'H':
   if (AUTO_DEMANGLING || GNU_DEMANGLING)
     {

       success = demangle_template (work, mangled, declp, 0, 0,
        0);
       if (!(work->constructor & 1))
  expect_return_type = 1;
       (*mangled)++;
       break;
     }
   else

     {;}

 default:
   if (AUTO_DEMANGLING || GNU_DEMANGLING)
     {


       func_done = 1;
       success = demangle_args (work, mangled, declp);
     }
   else
     {




       success = 0;
     }
   break;
 }



      {
 if (success && expect_func)
   {
     func_done = 1;
              if (LUCID_DEMANGLING || ARM_DEMANGLING || EDG_DEMANGLING)
                {
                  forget_types (work);
                }
     success = demangle_args (work, mangled, declp);



     expect_func = 0;
   }
      }
    }
  if (success && !func_done)
    {
      if (AUTO_DEMANGLING || GNU_DEMANGLING)
 {






   success = demangle_args (work, mangled, declp);
 }
    }
  if (success && PRINT_ARG_TYPES)
    {
      if (work->static_type)
 string_append (declp, " static");
      if (work->type_quals != TYPE_UNQUALIFIED)
 {
   APPEND_BLANK (declp);
   string_append (declp, qualifier_string (work->type_quals));
 }
    }

  return (success);
}
