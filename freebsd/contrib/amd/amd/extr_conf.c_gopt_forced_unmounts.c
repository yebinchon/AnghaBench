
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utsname {int release; } ;
struct TYPE_2__ {int flags; } ;


 int CFM_FORCED_UNMOUNTS ;
 scalar_t__ STREQ (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ gopt ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static int
gopt_forced_unmounts(const char *val)
{
  if (STREQ(val, "yes")) {

    fprintf(stderr, "conf: forced_unmounts unsupported on this system.\n");
    return 1;
  } else if (STREQ(val, "no")) {
    gopt.flags &= ~CFM_FORCED_UNMOUNTS;
    return 0;
  }

  fprintf(stderr, "conf: unknown value to unmount_on_exit \"%s\"\n", val);
  return 1;
}
