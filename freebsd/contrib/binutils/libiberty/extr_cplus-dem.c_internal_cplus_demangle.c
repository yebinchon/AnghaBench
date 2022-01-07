
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int constructor; int destructor; int static_type; int type_quals; int dllimported; } ;
typedef int string ;


 scalar_t__ AUTO_DEMANGLING ;
 scalar_t__ GNU_DEMANGLING ;
 int TYPE_UNQUALIFIED ;
 int demangle_prefix (struct work_stuff*,char const**,int *) ;
 int demangle_signature (struct work_stuff*,char const**,int *) ;
 int gnu_special (struct work_stuff*,char const**,int *) ;
 char* mop_up (struct work_stuff*,int *,int) ;
 int string_init (int *) ;
 int string_prepend (int *,char*) ;

__attribute__((used)) static char *
internal_cplus_demangle (struct work_stuff *work, const char *mangled)
{

  string decl;
  int success = 0;
  char *demangled = ((void*)0);
  int s1, s2, s3, s4;
  s1 = work->constructor;
  s2 = work->destructor;
  s3 = work->static_type;
  s4 = work->type_quals;
  work->constructor = work->destructor = 0;
  work->type_quals = TYPE_UNQUALIFIED;
  work->dllimported = 0;

  if ((mangled != ((void*)0)) && (*mangled != '\0'))
    {
      string_init (&decl);
      if ((AUTO_DEMANGLING || GNU_DEMANGLING))
 {
   success = gnu_special (work, &mangled, &decl);
 }
      if (!success)
 {
   success = demangle_prefix (work, &mangled, &decl);
 }
      if (success && (*mangled != '\0'))
 {
   success = demangle_signature (work, &mangled, &decl);
 }
      if (work->constructor == 2)
        {
          string_prepend (&decl, "global constructors keyed to ");
          work->constructor = 0;
        }
      else if (work->destructor == 2)
        {
          string_prepend (&decl, "global destructors keyed to ");
          work->destructor = 0;
        }
      else if (work->dllimported == 1)
        {
          string_prepend (&decl, "import stub for ");
          work->dllimported = 0;
        }
      demangled = mop_up (work, &decl, success);
    }
  work->constructor = s1;
  work->destructor = s2;
  work->static_type = s3;
  work->type_quals = s4;
  return demangled;
}
