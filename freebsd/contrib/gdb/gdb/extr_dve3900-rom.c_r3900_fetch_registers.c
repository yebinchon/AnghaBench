
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int badvaddr; int cause; } ;


 int PS_REGNUM ;
 int cause_fields ;
 int current_gdbarch ;
 int fetch_bad_vaddr () ;
 int fetch_bitmapped_register (int,int ) ;
 TYPE_1__* mips_regnum (int ) ;
 int orig_monitor_fetch_registers (int) ;
 int status_fields ;

__attribute__((used)) static void
r3900_fetch_registers (int regno)
{
  if (regno == mips_regnum (current_gdbarch)->badvaddr)
    fetch_bad_vaddr ();
  else if (regno == PS_REGNUM)
    fetch_bitmapped_register (PS_REGNUM, status_fields);
  else if (regno == mips_regnum (current_gdbarch)->cause)
    fetch_bitmapped_register (mips_regnum (current_gdbarch)->cause,
         cause_fields);
  else
    orig_monitor_fetch_registers (regno);
}
