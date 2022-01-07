
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dr_size; int dr_bitmap; } ;
typedef TYPE_1__ dt_regset_t ;


 int BT_CLEAR (int ,int) ;
 scalar_t__ BT_TEST (int ,int) ;
 int assert (int) ;

void
dt_regset_free(dt_regset_t *drp, int reg)
{
 assert(reg >= 0 && reg < drp->dr_size);
 assert(BT_TEST(drp->dr_bitmap, reg) != 0);
 BT_CLEAR(drp->dr_bitmap, reg);
}
