
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_XFER_TYPE ;
typedef int PTRACE_ARG3_TYPE ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ CANNOT_FETCH_REGISTER (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int PIDGET (int ) ;
 int PT_READ_U ;
 char* REGISTER_NAME (int) ;
 int TIDGET (int ) ;
 unsigned int U_REGS_OFFSET ;
 scalar_t__ errno ;
 int inferior_ptid ;
 int memset (char*,char,int) ;
 int perror_with_name (char*) ;
 int ptrace (int ,int,int ,int ) ;
 scalar_t__ register_addr (int,unsigned int) ;
 int sprintf (char*,char*,char*,int) ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
fetch_register (int regno)
{

  CORE_ADDR regaddr;
  char mess[128];
  int i;
  unsigned int offset;
  char buf[MAX_REGISTER_SIZE];
  int tid;

  if (CANNOT_FETCH_REGISTER (regno))
    {
      memset (buf, '\0', DEPRECATED_REGISTER_RAW_SIZE (regno));
      supply_register (regno, buf);
      return;
    }


  if ((tid = TIDGET (inferior_ptid)) == 0)
    tid = PIDGET (inferior_ptid);

  offset = U_REGS_OFFSET;

  regaddr = register_addr (regno, offset);
  for (i = 0; i < DEPRECATED_REGISTER_RAW_SIZE (regno); i += sizeof (PTRACE_XFER_TYPE))
    {
      errno = 0;
      *(PTRACE_XFER_TYPE *) & buf[i] = ptrace (PT_READ_U, tid,
            (PTRACE_ARG3_TYPE) regaddr, 0);
      regaddr += sizeof (PTRACE_XFER_TYPE);
      if (errno != 0)
 {
   sprintf (mess, "reading register %s (#%d)",
     REGISTER_NAME (regno), regno);
   perror_with_name (mess);
 }
    }
  supply_register (regno, buf);
}
