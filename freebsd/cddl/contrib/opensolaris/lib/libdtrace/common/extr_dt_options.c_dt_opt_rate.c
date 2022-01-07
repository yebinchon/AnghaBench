
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hrtime_t ;
typedef int dtrace_optval_t ;
struct TYPE_4__ {int* dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADOPTVAL ;
 int MICROSEC ;
 int MILLISEC ;
 int NANOSEC ;
 int SEC ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ errno ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strtoull (char const*,char**,int ) ;

__attribute__((used)) static int
dt_opt_rate(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 char *end;
 int i;
 dtrace_optval_t mul = 1, val = 0;

 const struct {
  char *name;
  hrtime_t mul;
 } suffix[] = {
  { "ns", NANOSEC / NANOSEC },
  { "nsec", NANOSEC / NANOSEC },
  { "us", NANOSEC / MICROSEC },
  { "usec", NANOSEC / MICROSEC },
  { "ms", NANOSEC / MILLISEC },
  { "msec", NANOSEC / MILLISEC },
  { "s", NANOSEC / SEC },
  { "sec", NANOSEC / SEC },
  { "m", NANOSEC * (hrtime_t)60 },
  { "min", NANOSEC * (hrtime_t)60 },
  { "h", NANOSEC * (hrtime_t)60 * (hrtime_t)60 },
  { "hour", NANOSEC * (hrtime_t)60 * (hrtime_t)60 },
  { "d", NANOSEC * (hrtime_t)(24 * 60 * 60) },
  { "day", NANOSEC * (hrtime_t)(24 * 60 * 60) },
  { "hz", 0 },
  { ((void*)0) }
 };

 if (arg != ((void*)0)) {
  errno = 0;
  val = strtoull(arg, &end, 0);

  for (i = 0; suffix[i].name != ((void*)0); i++) {
   if (strcasecmp(suffix[i].name, end) == 0) {
    mul = suffix[i].mul;
    break;
   }
  }

  if (suffix[i].name == ((void*)0) && *end != '\0' || val < 0)
   return (dt_set_errno(dtp, EDT_BADOPTVAL));

  if (mul == 0) {



   if (val != 0)
    val = NANOSEC / val;
  } else {
   val *= mul;
  }
 }

 dtp->dt_options[option] = val;
 return (0);
}
