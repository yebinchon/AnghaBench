
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfm_flags; } ;
typedef TYPE_1__ cf_map_t ;


 int CFM_BROWSABLE_DIRS ;
 int CFM_BROWSABLE_DIRS_FULL ;
 scalar_t__ STREQ (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int
ropt_browsable_dirs(const char *val, cf_map_t *cfm)
{
  if (STREQ(val, "full")) {
    cfm->cfm_flags |= CFM_BROWSABLE_DIRS_FULL;
    return 0;
  } else if (STREQ(val, "yes")) {
    cfm->cfm_flags |= CFM_BROWSABLE_DIRS;
    return 0;
  } else if (STREQ(val, "no")) {
    cfm->cfm_flags &= ~CFM_BROWSABLE_DIRS;
    return 0;
  }

  fprintf(stderr, "conf: unknown value to browsable_dirs \"%s\"\n", val);
  return 1;
}
