
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nis_domain; } ;


 int fprintf (int ,char*) ;
 TYPE_1__ gopt ;
 int stderr ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_nis_domain(const char *val)
{




  fprintf(stderr, "conf: nis_domain option ignored.  No NIS support available.\n");
  return 1;

}
