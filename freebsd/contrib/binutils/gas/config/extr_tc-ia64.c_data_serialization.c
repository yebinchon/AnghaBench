
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ debug_dv; } ;
struct TYPE_5__ {scalar_t__ data_srlz; TYPE_1__* dependency; } ;
struct TYPE_4__ {scalar_t__ semantics; } ;


 scalar_t__ IA64_DVS_OTHER ;
 scalar_t__ STATE_STOP ;
 int fprintf (int ,char*) ;
 TYPE_3__ md ;
 int print_dependency (char*,int) ;
 TYPE_2__* regdeps ;
 int regdepslen ;
 int stderr ;

__attribute__((used)) static void
data_serialization ()
{
  int i = 0;
  if (md.debug_dv)
    fprintf (stderr, "  Data serialization\n");
  while (i < regdepslen)
    {
      if (regdeps[i].data_srlz == STATE_STOP


   || (regdeps[i].dependency)->semantics == IA64_DVS_OTHER)
 {
   print_dependency ("Removing", i);
   regdeps[i] = regdeps[--regdepslen];
 }
      else
 ++i;
    }
}
