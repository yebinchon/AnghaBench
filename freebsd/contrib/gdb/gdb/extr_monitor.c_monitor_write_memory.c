
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmdll; char* cmdl; char* cmdw; char* cmdb; int term_cmd; scalar_t__ term; scalar_t__ resp_delim; } ;
struct TYPE_4__ {int flags; TYPE_1__ setmem; scalar_t__ fill; } ;
typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int) ;
 int MO_ADDR_BITS_REMOVE ;
 int MO_FILL_USES_ADDR ;
 int MO_NO_ECHO_ON_SETMEM ;
 int MO_SETMEM_INTERACTIVE ;
 TYPE_2__* current_monitor ;
 unsigned int extract_unsigned_integer (char*,int) ;
 int monitor_debug (char*,...) ;
 int monitor_expect (scalar_t__,int *,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_expect_regexp (int *,int *,int ) ;
 int monitor_printf (char*,int,...) ;
 int monitor_printf_noecho (char*,int,...) ;
 int paddr (int) ;
 int setmem_resp_delim_pattern ;

__attribute__((used)) static int
monitor_write_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned int val, hostval;
  char *cmd;
  int i;

  monitor_debug ("MON write %d %s\n", len, paddr (memaddr));

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    memaddr = ADDR_BITS_REMOVE (memaddr);



  if (current_monitor->fill)
    {
      for (i = 0; i < len; i++)
 if (myaddr[i] != 0)
   break;

      if (i > 4)
 {
   monitor_debug ("MON FILL %d\n", i);
   if (current_monitor->flags & MO_FILL_USES_ADDR)
     monitor_printf (current_monitor->fill, memaddr, (memaddr + i) - 1, 0);
   else
     monitor_printf (current_monitor->fill, memaddr, i, 0);

   monitor_expect_prompt (((void*)0), 0);

   return i;
 }
    }
  if ((memaddr & 0x3) == 0 && len >= 4 && current_monitor->setmem.cmdl)
    {
      len = 4;
      cmd = current_monitor->setmem.cmdl;
    }
  else if ((memaddr & 0x1) == 0 && len >= 2 && current_monitor->setmem.cmdw)
    {
      len = 2;
      cmd = current_monitor->setmem.cmdw;
    }
  else
    {
      len = 1;
      cmd = current_monitor->setmem.cmdb;
    }

  val = extract_unsigned_integer (myaddr, len);

  if (len == 4)
    {
      hostval = *(unsigned int *) myaddr;
      monitor_debug ("Hostval(%08x) val(%08x)\n", hostval, val);
    }


  if (current_monitor->flags & MO_NO_ECHO_ON_SETMEM)
    monitor_printf_noecho (cmd, memaddr, val);
  else if (current_monitor->flags & MO_SETMEM_INTERACTIVE)
    {

      monitor_printf_noecho (cmd, memaddr);

      if (current_monitor->setmem.resp_delim)
        {
          monitor_debug ("EXP setmem.resp_delim");
          monitor_expect_regexp (&setmem_resp_delim_pattern, ((void*)0), 0);
   monitor_printf ("%x\r", val);
       }
      if (current_monitor->setmem.term)
 {
   monitor_debug ("EXP setmem.term");
   monitor_expect (current_monitor->setmem.term, ((void*)0), 0);
   monitor_printf ("%x\r", val);
 }
      if (current_monitor->setmem.term_cmd)
 {
   monitor_printf ("%s", current_monitor->setmem.term_cmd);

 }
    }
  else
    monitor_printf (cmd, memaddr, val);

  monitor_expect_prompt (((void*)0), 0);

  return len;
}
