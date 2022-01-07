
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_bb_info {int dummy; } ;
typedef TYPE_2__* basic_block ;
struct TYPE_4__ {scalar_t__ rtl; } ;
struct TYPE_5__ {TYPE_1__ il; } ;


 int gcc_assert (int) ;
 scalar_t__ ggc_alloc_cleared (int) ;

void
init_rtl_bb_info (basic_block bb)
{
  gcc_assert (!bb->il.rtl);
  bb->il.rtl = ggc_alloc_cleared (sizeof (struct rtl_bb_info));
}
