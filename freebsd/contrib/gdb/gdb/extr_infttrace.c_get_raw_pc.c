
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pc_val ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;
typedef int CORE_ADDR ;


 int PC_REGNUM ;
 int U_REGS_OFFSET ;
 int read_from_register_save_state (int ,int ,char*,int) ;
 int register_addr (int ,int ) ;

CORE_ADDR
get_raw_pc (lwpid_t ttid)
{
  unsigned long pc_val;
  int offset;
  int res;

  offset = register_addr (PC_REGNUM, U_REGS_OFFSET);
  res = read_from_register_save_state (
     ttid,
     (TTRACE_ARG_TYPE) offset,
     (char *) &pc_val,
     sizeof (pc_val));
  if (res <= 0)
    {
      return (CORE_ADDR) pc_val;
    }
  else
    {
      return (CORE_ADDR) 0;
    }
}
