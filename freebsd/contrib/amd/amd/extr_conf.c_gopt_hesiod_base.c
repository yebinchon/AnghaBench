
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hesiod_base; } ;


 int fprintf (int ,char*) ;
 TYPE_1__ gopt ;
 int stderr ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_hesiod_base(const char *val)
{




  fprintf(stderr, "conf: hesiod_base option ignored.  No Hesiod support available.\n");
  return 1;

}
