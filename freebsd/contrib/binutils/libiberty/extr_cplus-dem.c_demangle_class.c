
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct work_stuff {int constructor; int destructor; int temp_start; } ;
struct TYPE_10__ {char* p; char* b; } ;
typedef TYPE_1__ string ;


 int LEN_STRING (TYPE_1__*) ;
 char* SCOPE_STRING (struct work_stuff*) ;
 scalar_t__ demangle_class_name (struct work_stuff*,char const**,TYPE_1__*) ;
 int register_Btype (struct work_stuff*) ;
 int remember_Btype (struct work_stuff*,char*,int ,int) ;
 int remember_Ktype (struct work_stuff*,char*,int ) ;
 int string_delete (TYPE_1__*) ;
 int string_init (TYPE_1__*) ;
 int string_prepend (TYPE_1__*,char*) ;
 int string_prepends (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
demangle_class (struct work_stuff *work, const char **mangled, string *declp)
{
  int success = 0;
  int btype;
  string class_name;
  char *save_class_name_end = 0;

  string_init (&class_name);
  btype = register_Btype (work);
  if (demangle_class_name (work, mangled, &class_name))
    {
      save_class_name_end = class_name.p;
      if ((work->constructor & 1) || (work->destructor & 1))
 {

          if (work->temp_start && (work->temp_start != -1))
            {
              class_name.p = class_name.b + work->temp_start;
            }
   string_prepends (declp, &class_name);
   if (work -> destructor & 1)
     {
       string_prepend (declp, "~");
              work -> destructor -= 1;
     }
   else
     {
       work -> constructor -= 1;
     }
 }
      class_name.p = save_class_name_end;
      remember_Ktype (work, class_name.b, LEN_STRING(&class_name));
      remember_Btype (work, class_name.b, LEN_STRING(&class_name), btype);
      string_prepend (declp, SCOPE_STRING (work));
      string_prepends (declp, &class_name);
      success = 1;
    }
  string_delete (&class_name);
  return (success);
}
