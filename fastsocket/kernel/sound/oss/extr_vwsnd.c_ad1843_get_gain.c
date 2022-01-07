
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lithium_t ;
struct TYPE_4__ {scalar_t__ negative; int rfield; TYPE_2__* lfield; } ;
typedef TYPE_1__ ad1843_gain_t ;
struct TYPE_5__ {int nbits; } ;


 int ad1843_read_multi (int *,int,TYPE_2__*,int*,int ,int*) ;

__attribute__((used)) static int ad1843_get_gain(lithium_t *lith, const ad1843_gain_t *gp)
{
 int lg, rg;
 unsigned short mask = (1 << gp->lfield->nbits) - 1;

 ad1843_read_multi(lith, 2, gp->lfield, &lg, gp->rfield, &rg);
 if (gp->negative) {
  lg = mask - lg;
  rg = mask - rg;
 }
 lg = (lg * 100 + (mask >> 1)) / mask;
 rg = (rg * 100 + (mask >> 1)) / mask;
 return lg << 0 | rg << 8;
}
