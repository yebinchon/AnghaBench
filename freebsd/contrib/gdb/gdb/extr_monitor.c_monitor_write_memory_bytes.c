
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int term_cmd; } ;
struct TYPE_5__ {int cmdb; } ;
struct TYPE_6__ {TYPE_1__ getreg; TYPE_2__ setmem; } ;
typedef int CORE_ADDR ;


 TYPE_3__* current_monitor ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (char*,...) ;

__attribute__((used)) static int
monitor_write_memory_bytes (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned char val;
  int written = 0;
  if (len == 0)
    return 0;

  monitor_printf (current_monitor->setmem.cmdb, memaddr);
  monitor_expect_prompt (((void*)0), 0);
  while (len)
    {
      val = *myaddr;
      monitor_printf ("%x\r", val);
      myaddr++;
      memaddr++;
      written++;

      monitor_expect_prompt (((void*)0), 0);
      len--;
    }

  monitor_printf (current_monitor->getreg.term_cmd);
  monitor_expect_prompt (((void*)0), 0);
  return written;
}
