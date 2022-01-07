
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_XFER_TYPE ;
typedef int PTRACE_ARG3_TYPE ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ CANNOT_STORE_REGISTER (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int PIDGET (int ) ;
 int PT_WRITE_U ;
 char* REGISTER_NAME (int) ;
 int TIDGET (int ) ;
 unsigned int U_REGS_OFFSET ;
 scalar_t__ errno ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int ,int,int ,int ) ;
 int regcache_collect (int,char*) ;
 scalar_t__ register_addr (int,unsigned int) ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static void
store_register (int regno)
{

  CORE_ADDR regaddr;
  char mess[128];
  int i;
  unsigned int offset;
  int tid;
  char buf[MAX_REGISTER_SIZE];

  if (CANNOT_STORE_REGISTER (regno))
    {
      return;
    }


  if ((tid = TIDGET (inferior_ptid)) == 0)
    tid = PIDGET (inferior_ptid);

  offset = U_REGS_OFFSET;

  regaddr = register_addr (regno, offset);


  regcache_collect (regno, buf);


  for (i = 0; i < DEPRECATED_REGISTER_RAW_SIZE (regno); i += sizeof (PTRACE_XFER_TYPE))
    {
      errno = 0;
      ptrace (PT_WRITE_U, tid, (PTRACE_ARG3_TYPE) regaddr,
       *(PTRACE_XFER_TYPE *) (buf + i));
      regaddr += sizeof (PTRACE_XFER_TYPE);
      if (errno != 0)
 {
   sprintf (mess, "writing register %s (#%d)",
     REGISTER_NAME (regno), regno);
   perror_with_name (mess);
 }
    }
}
