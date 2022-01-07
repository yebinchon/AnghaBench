
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dr_size; int dr_bitmap; } ;
typedef TYPE_1__ dt_regset_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ BT_TEST (int ,int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int abort () ;
 int dt_dprintf (char*,int) ;
 int * getenv (char*) ;

void
dt_regset_assert_free(dt_regset_t *drp)
{
 int reg;
 boolean_t fail = B_FALSE;
 for (reg = 0; reg < drp->dr_size; reg++) {
  if (BT_TEST(drp->dr_bitmap, reg) != 0) {
   dt_dprintf("%%r%d was left allocated\n", reg);
   fail = B_TRUE;
  }
 }




 if (fail && getenv("DTRACE_DEBUG_REGSET") != ((void*)0))
  abort();
}
