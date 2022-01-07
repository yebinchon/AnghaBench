
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_3__ {int dr_size; int dr_bitmap; } ;
typedef TYPE_1__ dt_regset_t ;


 int BT_BITOUL (int ) ;
 int bzero (int ,int) ;

void
dt_regset_reset(dt_regset_t *drp)
{
 bzero(drp->dr_bitmap, sizeof (ulong_t) * BT_BITOUL(drp->dr_size));
}
