
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ auto_attrcache; } ;


 scalar_t__ atoi (char const*) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int stderr ;

__attribute__((used)) static int
gopt_auto_attrcache(const char *val)
{
  gopt.auto_attrcache = atoi(val);
  if (gopt.auto_attrcache < 0) {
    fprintf(stderr, "conf: bad attrcache value: \"%s\"\n", val);
    return 1;
  }
  return 0;
}
