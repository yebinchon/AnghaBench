
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int badvaddr; int cause; int fp_implementation_revision; } ;
typedef int PTRACE_ARG3_TYPE ;


 int DEPRECATED_FP_REGNUM ;
 int FIRST_EMBED_REGNUM ;
 int LAST_EMBED_REGNUM ;
 int NUM_REGS ;
 int PIDGET (int ) ;
 int PS_REGNUM ;
 int PT_WRITE_U ;
 int ZERO_REGNUM ;
 int current_gdbarch ;
 scalar_t__ errno ;
 int inferior_ptid ;
 TYPE_1__* mips_regnum (int ) ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;
 int read_register (int) ;
 unsigned int register_ptrace_addr (int) ;
 int sprintf (char*,char*,int) ;

void
store_inferior_registers (int regno)
{
  unsigned int regaddr;
  char buf[80];

  if (regno > 0)
    {
      if (regno == ZERO_REGNUM || regno == PS_REGNUM
   || regno == mips_regnum (current_gdbarch)->badvaddr
   || regno == mips_regnum (current_gdbarch)->cause
   || regno == mips_regnum (current_gdbarch)->fp_implementation_revision
   || regno == DEPRECATED_FP_REGNUM
   || (regno >= FIRST_EMBED_REGNUM && regno <= LAST_EMBED_REGNUM))
 return;
      regaddr = register_ptrace_addr (regno);
      errno = 0;
      ptrace (PT_WRITE_U, PIDGET (inferior_ptid), (PTRACE_ARG3_TYPE) regaddr,
       read_register (regno));
      if (errno != 0)
 {
   sprintf (buf, "writing register number %d", regno);
   perror_with_name (buf);
 }
    }
  else
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 store_inferior_registers (regno);
    }
}
