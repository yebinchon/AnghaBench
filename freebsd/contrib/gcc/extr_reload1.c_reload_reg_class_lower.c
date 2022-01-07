
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int optional; int nregs; scalar_t__ class; } ;


 int* reg_class_size ;
 TYPE_1__* rld ;

__attribute__((used)) static int
reload_reg_class_lower (const void *r1p, const void *r2p)
{
  int r1 = *(const short *) r1p, r2 = *(const short *) r2p;
  int t;


  t = rld[r1].optional - rld[r2].optional;
  if (t != 0)
    return t;


  t = ((reg_class_size[(int) rld[r2].class] == 1)
       - (reg_class_size[(int) rld[r1].class] == 1));
  if (t != 0)
    return t;


  t = rld[r2].nregs - rld[r1].nregs;
  if (t != 0)
    return t;


  t = (int) rld[r1].class - (int) rld[r2].class;
  if (t != 0)
    return t;



  return r1 - r2;
}
