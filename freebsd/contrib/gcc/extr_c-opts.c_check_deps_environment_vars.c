
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ignore_main_file; int style; } ;
struct TYPE_4__ {TYPE_1__ deps; } ;


 int DEPS_SYSTEM ;
 int DEPS_USER ;
 int GET_ENVIRONMENT (char*,char*) ;
 int OPT_MT ;
 TYPE_2__* cpp_opts ;
 int defer_opt (int ,char*) ;
 int deps_append ;
 char* deps_file ;
 int deps_seen ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
check_deps_environment_vars (void)
{
  char *spec;

  GET_ENVIRONMENT (spec, "DEPENDENCIES_OUTPUT");
  if (spec)
    cpp_opts->deps.style = DEPS_USER;
  else
    {
      GET_ENVIRONMENT (spec, "SUNPRO_DEPENDENCIES");
      if (spec)
 {
   cpp_opts->deps.style = DEPS_SYSTEM;
   cpp_opts->deps.ignore_main_file = 1;
 }
    }

  if (spec)
    {

      char *s = strchr (spec, ' ');
      if (s)
 {

   defer_opt (OPT_MT, s + 1);
   *s = '\0';
 }


      if (!deps_file)
 deps_file = spec;

      deps_append = 1;
      deps_seen = 1;
    }
}
