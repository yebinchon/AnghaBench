
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cause; } ;


 int PS_REGNUM ;
 int cause_fields ;
 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;
 int orig_monitor_store_registers (int) ;
 int status_fields ;
 int store_bitmapped_register (int,int ) ;

__attribute__((used)) static void
r3900_store_registers (int regno)
{
  if (regno == PS_REGNUM)
    store_bitmapped_register (PS_REGNUM, status_fields);
  else if (regno == mips_regnum (current_gdbarch)->cause)
    store_bitmapped_register (mips_regnum (current_gdbarch)->cause,
         cause_fields);
  else
    orig_monitor_store_registers (regno);
}
