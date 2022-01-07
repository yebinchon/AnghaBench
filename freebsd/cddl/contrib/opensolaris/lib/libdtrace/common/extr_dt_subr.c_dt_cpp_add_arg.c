
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_cpp_argc; int dt_cpp_args; char** dt_cpp_argv; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int assert (int) ;
 int bzero (char**,int) ;
 char** realloc (char**,int) ;
 char* strdup (char const*) ;

char *
dt_cpp_add_arg(dtrace_hdl_t *dtp, const char *str)
{
 char *arg;

 if (dtp->dt_cpp_argc == dtp->dt_cpp_args) {
  int olds = dtp->dt_cpp_args;
  int news = olds * 2;
  char **argv = realloc(dtp->dt_cpp_argv, sizeof (char *) * news);

  if (argv == ((void*)0))
   return (((void*)0));

  bzero(&argv[olds], sizeof (char *) * olds);
  dtp->dt_cpp_argv = argv;
  dtp->dt_cpp_args = news;
 }

 if ((arg = strdup(str)) == ((void*)0))
  return (((void*)0));

 assert(dtp->dt_cpp_argc < dtp->dt_cpp_args);
 dtp->dt_cpp_argv[dtp->dt_cpp_argc++] = arg;
 return (arg);
}
