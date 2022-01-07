
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rtl; } ;
struct TYPE_6__ {TYPE_2__ il; } ;
struct TYPE_4__ {int global_live_at_end; } ;


 TYPE_3__* ENTRY_BLOCK_PTR ;
 int REGNO_REG_SET_P (int ,int ) ;

__attribute__((used)) static bool
ix86_eax_live_at_start_p (void)
{






  return REGNO_REG_SET_P (ENTRY_BLOCK_PTR->il.rtl->global_live_at_end, 0);
}
