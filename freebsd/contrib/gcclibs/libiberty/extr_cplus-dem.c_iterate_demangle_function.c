
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int dummy; } ;
typedef int string ;


 scalar_t__ ARM_DEMANGLING ;
 scalar_t__ EDG_DEMANGLING ;
 scalar_t__ HP_DEMANGLING ;
 scalar_t__ LUCID_DEMANGLING ;
 int delete_work_stuff (struct work_stuff*) ;
 int demangle_function_name (struct work_stuff*,char const**,int *,char const*) ;
 int demangle_signature (struct work_stuff*,char const**,int *) ;
 int memset (struct work_stuff*,int ,int) ;
 int string_appends (int *,int *) ;
 int string_clear (int *) ;
 int string_delete (int *) ;
 int string_init (int *) ;
 int * strstr (char const*,char*) ;
 int work_stuff_copy_to_from (struct work_stuff*,struct work_stuff*) ;

__attribute__((used)) static int
iterate_demangle_function (struct work_stuff *work, const char **mangled,
                           string *declp, const char *scan)
{
  const char *mangle_init = *mangled;
  int success = 0;
  string decl_init;
  struct work_stuff work_init;

  if (*(scan + 2) == '\0')
    return 0;



  if (ARM_DEMANGLING || LUCID_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING
      || strstr (scan + 2, "__") == ((void*)0))
    {
      demangle_function_name (work, mangled, declp, scan);
      return 1;
    }



  string_init (&decl_init);
  string_appends (&decl_init, declp);
  memset (&work_init, 0, sizeof work_init);
  work_stuff_copy_to_from (&work_init, work);







  while (scan[2])
    {
      demangle_function_name (work, mangled, declp, scan);
      success = demangle_signature (work, mangled, declp);
      if (success)
 break;


      *mangled = mangle_init;
      string_clear (declp);
      string_appends (declp, &decl_init);
      work_stuff_copy_to_from (work, &work_init);


      scan += 2;


      while (*scan && (scan[0] != '_' || scan[1] != '_'))
 scan++;


      while (*scan && *scan == '_')
 scan++;
      scan -= 2;
    }


  delete_work_stuff (&work_init);
  string_delete (&decl_init);

  return success;
}
