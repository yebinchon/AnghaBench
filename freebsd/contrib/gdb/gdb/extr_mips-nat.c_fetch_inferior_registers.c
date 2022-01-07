
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_ARG3_TYPE ;


 int DEPRECATED_FP_REGNUM ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_REGS ;
 int PIDGET (int ) ;
 int PT_READ_U ;
 int ZERO_REGNUM ;
 int deprecated_registers_fetched () ;
 int inferior_ptid ;
 int memset (char*,int ,int) ;
 int ptrace (int ,int ,int ,int ) ;
 unsigned int register_ptrace_addr (int) ;
 int supply_register (int,char*) ;

void
fetch_inferior_registers (int regno)
{
  unsigned int regaddr;
  char buf[MAX_REGISTER_SIZE];
  int i;
  char zerobuf[MAX_REGISTER_SIZE];
  memset (zerobuf, 0, MAX_REGISTER_SIZE);

  deprecated_registers_fetched ();

  for (regno = 1; regno < NUM_REGS; regno++)
    {
      regaddr = register_ptrace_addr (regno);
      for (i = 0; i < DEPRECATED_REGISTER_RAW_SIZE (regno); i += sizeof (int))
 {
   *(int *) &buf[i] = ptrace (PT_READ_U, PIDGET (inferior_ptid),
         (PTRACE_ARG3_TYPE) regaddr, 0);
   regaddr += sizeof (int);
 }
      supply_register (regno, buf);
    }

  supply_register (ZERO_REGNUM, zerobuf);

  supply_register (DEPRECATED_FP_REGNUM, zerobuf);
}
