
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmdll; char* cmdl; char* cmdw; char* cmdb; int term_cmd; scalar_t__ term; scalar_t__ resp_delim; } ;
struct TYPE_4__ {int flags; TYPE_1__ getmem; } ;
typedef int CORE_ADDR ;


 int MO_HEX_PREFIX ;
 TYPE_2__* current_monitor ;
 int getmem_resp_delim_pattern ;
 scalar_t__ isxdigit (int) ;
 int monitor_debug (char*) ;
 int monitor_error (char*,char*,int,int,char*,int ) ;
 int monitor_expect (scalar_t__,int *,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_expect_regexp (int *,int *,int ) ;
 int monitor_printf (char*,...) ;
 int readchar (int ) ;
 int store_unsigned_integer (char*,int,unsigned int) ;
 unsigned int strtoul (char*,char**,int) ;
 int timeout ;

__attribute__((used)) static int
monitor_read_memory_single (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned int val;
  char membuf[sizeof (int) * 2 + 1];
  char *p;
  char *cmd;

  monitor_debug ("MON read single\n");
  if ((memaddr & 0x3) == 0 && len >= 4 && current_monitor->getmem.cmdl)
    {
      len = 4;
      cmd = current_monitor->getmem.cmdl;
    }
  else if ((memaddr & 0x1) == 0 && len >= 2 && current_monitor->getmem.cmdw)
    {
      len = 2;
      cmd = current_monitor->getmem.cmdw;
    }
  else
    {
      len = 1;
      cmd = current_monitor->getmem.cmdb;
    }



  monitor_printf (cmd, memaddr);





  if (current_monitor->getmem.resp_delim)
    {
      monitor_debug ("EXP getmem.resp_delim\n");
      monitor_expect_regexp (&getmem_resp_delim_pattern, ((void*)0), 0);
    }





  if (current_monitor->flags & MO_HEX_PREFIX)
    {
      int c;

      c = readchar (timeout);
      while (c == ' ')
 c = readchar (timeout);
      if ((c == '0') && ((c = readchar (timeout)) == 'x'))
 ;
      else
 monitor_error ("monitor_read_memory_single",
         "bad response from monitor",
         memaddr, 0, ((void*)0), 0);
    }

  {
    int i;
    for (i = 0; i < len * 2; i++)
      {
 int c;

 while (1)
   {
     c = readchar (timeout);
     if (isxdigit (c))
       break;
     if (c == ' ')
       continue;

     monitor_error ("monitor_read_memory_single",
      "bad response from monitor",
      memaddr, i, membuf, 0);
   }
      membuf[i] = c;
    }
    membuf[i] = '\000';
  }





  if (current_monitor->getmem.term)
    {
      monitor_expect (current_monitor->getmem.term, ((void*)0), 0);

      if (current_monitor->getmem.term_cmd)
 {
   monitor_printf (current_monitor->getmem.term_cmd);
   monitor_expect_prompt (((void*)0), 0);
 }
    }
  else
    monitor_expect_prompt (((void*)0), 0);

  p = membuf;
  val = strtoul (membuf, &p, 16);

  if (val == 0 && membuf == p)
    monitor_error ("monitor_read_memory_single",
     "bad value from monitor",
     memaddr, 0, membuf, 0);



  store_unsigned_integer (myaddr, len, val);

  return len;
}
