
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_optval_t ;
struct TYPE_4__ {int* dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DTRACEOPT_UNSET ;
 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ errno ;
 scalar_t__ strcasecmp (char*,char const*) ;
 int strtoull (char const*,char**,int ) ;

__attribute__((used)) static int
dt_opt_runtime(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 char *end;
 dtrace_optval_t val = 0;
 int i;

 const struct {
  char *positive;
  char *negative;
 } couples[] = {
  { "yes", "no" },
  { "enable", "disable" },
  { "enabled", "disabled" },
  { "true", "false" },
  { "on", "off" },
  { "set", "unset" },
  { ((void*)0) }
 };

 if (arg != ((void*)0)) {
  if (arg[0] == '\0') {
   val = DTRACEOPT_UNSET;
   goto out;
  }

  for (i = 0; couples[i].positive != ((void*)0); i++) {
   if (strcasecmp(couples[i].positive, arg) == 0) {
    val = 1;
    goto out;
   }

   if (strcasecmp(couples[i].negative, arg) == 0) {
    val = DTRACEOPT_UNSET;
    goto out;
   }
  }

  errno = 0;
  val = strtoull(arg, &end, 0);

  if (*end != '\0' || errno != 0 || val < 0)
   return (dt_set_errno(dtp, EDT_BADOPTVAL));
 }

out:
 dtp->dt_options[option] = val;
 return (0);
}
