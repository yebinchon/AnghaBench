
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CFM_TRUNCATE_LOG ;
 scalar_t__ STREQ (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int stderr ;

__attribute__((used)) static int
gopt_truncate_log(const char *val)
{
  if (STREQ(val, "yes")) {
    gopt.flags |= CFM_TRUNCATE_LOG;
    return 0;
  } else if (STREQ(val, "no")) {
    gopt.flags &= ~CFM_TRUNCATE_LOG;
    return 0;
  }

  fprintf(stderr, "conf: unknown value to truncate_log \"%s\"\n", val);
  return 1;
}
