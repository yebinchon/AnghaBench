
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct ptrace_io_desc {char* piod_addr; int piod_len; void* piod_offs; int piod_op; } ;
struct mem_attrib {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int caddr_t ;
typedef int PTRACE_XFER_TYPE ;
typedef int PTRACE_ARG3_TYPE ;
typedef int CORE_ADDR ;


 int CLEAR_INSN_CACHE () ;
 scalar_t__ EINVAL ;
 int GDB_MAX_ALLOCA ;
 int PIDGET (int ) ;
 int PIOD_READ_D ;
 int PIOD_WRITE_D ;
 int PT_IO ;
 int PT_READ_I ;
 int PT_WRITE_D ;
 int PT_WRITE_I ;
 int QUIT ;
 scalar_t__ alloca (int) ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ errno ;
 int inferior_ptid ;
 struct cleanup* make_cleanup (int ,int*) ;
 int memcpy (char*,char*,int) ;
 int ptrace (int ,int ,int ,int) ;
 int xfree ;
 scalar_t__ xmalloc (int) ;

int
child_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
     struct mem_attrib *attrib, struct target_ops *target)
{
  int i;

  CORE_ADDR addr = memaddr & -(CORE_ADDR) sizeof (PTRACE_XFER_TYPE);

  int count = ((((memaddr + len) - addr) + sizeof (PTRACE_XFER_TYPE) - 1)
        / sizeof (PTRACE_XFER_TYPE));
  int alloc = count * sizeof (PTRACE_XFER_TYPE);
  PTRACE_XFER_TYPE *buffer;
  struct cleanup *old_chain = ((void*)0);
  if (len < GDB_MAX_ALLOCA)
    {
      buffer = (PTRACE_XFER_TYPE *) alloca (alloc);
    }
  else
    {
      buffer = (PTRACE_XFER_TYPE *) xmalloc (alloc);
      old_chain = make_cleanup (xfree, buffer);
    }

  if (write)
    {


      if (addr != memaddr || len < (int) sizeof (PTRACE_XFER_TYPE))
 {

   buffer[0] = ptrace (PT_READ_I, PIDGET (inferior_ptid),
         (PTRACE_ARG3_TYPE) addr, 0);
 }

      if (count > 1)
 {
   buffer[count - 1] =
     ptrace (PT_READ_I, PIDGET (inferior_ptid),
      ((PTRACE_ARG3_TYPE)
       (addr + (count - 1) * sizeof (PTRACE_XFER_TYPE))), 0);
 }


      memcpy ((char *) buffer + (memaddr & (sizeof (PTRACE_XFER_TYPE) - 1)),
       myaddr, len);


      for (i = 0; i < count; i++, addr += sizeof (PTRACE_XFER_TYPE))
 {
   errno = 0;
   ptrace (PT_WRITE_D, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) addr, buffer[i]);
   if (errno)
     {


       errno = 0;
       ptrace (PT_WRITE_I, PIDGET (inferior_ptid),
        (PTRACE_ARG3_TYPE) addr, buffer[i]);
     }
   if (errno)
     return 0;
 }



    }
  else
    {

      for (i = 0; i < count; i++, addr += sizeof (PTRACE_XFER_TYPE))
 {
   errno = 0;
   buffer[i] = ptrace (PT_READ_I, PIDGET (inferior_ptid),
         (PTRACE_ARG3_TYPE) addr, 0);
   if (errno)
     return 0;
   QUIT;
 }


      memcpy (myaddr,
       (char *) buffer + (memaddr & (sizeof (PTRACE_XFER_TYPE) - 1)),
       len);
    }

  if (old_chain != ((void*)0))
    do_cleanups (old_chain);
  return len;
}
