
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lithium_t ;
struct TYPE_5__ {int rfield; TYPE_2__* lfield; scalar_t__ negative; } ;
typedef TYPE_1__ ad1843_gain_t ;
struct TYPE_6__ {int nbits; } ;


 int EINVAL ;
 int ad1843_get_gain (int *,TYPE_1__ const*) ;
 int ad1843_write_multi (int *,int,TYPE_2__*,int,int ,int) ;

__attribute__((used)) static int ad1843_set_gain(lithium_t *lith,
      const ad1843_gain_t *gp,
      int newval)
{
 unsigned short mask = (1 << gp->lfield->nbits) - 1;

 int lg = newval >> 0 & 0xFF;
 int rg = newval >> 8;
 if (lg < 0 || lg > 100 || rg < 0 || rg > 100)
  return -EINVAL;
 lg = (lg * mask + (mask >> 1)) / 100;
 rg = (rg * mask + (mask >> 1)) / 100;
 if (gp->negative) {
  lg = mask - lg;
  rg = mask - rg;
 }
 ad1843_write_multi(lith, 2, gp->lfield, lg, gp->rfield, rg);
 return ad1843_get_gain(lith, gp);
}
