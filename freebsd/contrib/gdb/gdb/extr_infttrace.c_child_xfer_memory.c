
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef scalar_t__ TTRACE_XFER_TYPE ;
typedef int TTRACE_ARG_TYPE ;
typedef int CORE_ADDR ;


 int PIDGET (int ) ;
 int QUIT ;
 int TT_LWP_RDTEXT ;
 int TT_LWP_WRDATA ;
 int TT_LWP_WRTEXT ;
 int TT_NIL ;
 scalar_t__ alloca (int) ;
 scalar_t__ call_ttrace (int ,int ,int ,int ,int ) ;
 scalar_t__ errno ;
 int inferior_ptid ;
 int memcpy (char*,char*,int) ;

int
child_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
     struct mem_attrib *attrib,
     struct target_ops *target)
{
  int i;

  CORE_ADDR addr = memaddr & -(CORE_ADDR) sizeof (TTRACE_XFER_TYPE);

  int count
  = (((memaddr + len) - addr) + sizeof (TTRACE_XFER_TYPE) - 1)
  / sizeof (TTRACE_XFER_TYPE);




  TTRACE_XFER_TYPE *buffer
    = (TTRACE_XFER_TYPE *) alloca (count * sizeof (TTRACE_XFER_TYPE));

  if (write)
    {


      if (addr != memaddr || len < (int) sizeof (TTRACE_XFER_TYPE))
 {

   buffer[0] = call_ttrace (TT_LWP_RDTEXT,
       PIDGET (inferior_ptid),
       (TTRACE_ARG_TYPE) addr,
       TT_NIL,
       TT_NIL);
 }

      if (count > 1)
 {
   buffer[count - 1] = call_ttrace (TT_LWP_RDTEXT,
        PIDGET (inferior_ptid),
        ((TTRACE_ARG_TYPE)
     (addr + (count - 1) * sizeof (TTRACE_XFER_TYPE))),
        TT_NIL,
        TT_NIL);
 }



      memcpy ((char *) buffer + (memaddr & (sizeof (TTRACE_XFER_TYPE) - 1)),
       myaddr,
       len);



      for (i = 0; i < count; i++, addr += sizeof (TTRACE_XFER_TYPE))
 {
   errno = 0;
   call_ttrace (TT_LWP_WRDATA,
         PIDGET (inferior_ptid),
         (TTRACE_ARG_TYPE) addr,
         (TTRACE_ARG_TYPE) buffer[i],
         TT_NIL);
   if (errno)
     {


       errno = 0;
       call_ttrace (TT_LWP_WRTEXT,
      PIDGET (inferior_ptid),
      (TTRACE_ARG_TYPE) addr,
      (TTRACE_ARG_TYPE) buffer[i],
      TT_NIL);
     }
   if (errno)
     return 0;
 }
    }
  else
    {

      for (i = 0; i < count; i++, addr += sizeof (TTRACE_XFER_TYPE))
 {
   errno = 0;
   buffer[i] = call_ttrace (TT_LWP_RDTEXT,
       PIDGET (inferior_ptid),
       (TTRACE_ARG_TYPE) addr,
       TT_NIL,
       TT_NIL);
   if (errno)
     return 0;
   QUIT;
 }


      memcpy (myaddr,
       (char *) buffer + (memaddr & (sizeof (TTRACE_XFER_TYPE) - 1)),
       len);
    }
  return len;
}
