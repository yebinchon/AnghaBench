
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int term_cmd; } ;
struct TYPE_4__ {int cmdll; } ;
struct TYPE_6__ {TYPE_2__ getreg; TYPE_1__ setmem; } ;
typedef int CORE_ADDR ;


 TYPE_3__* current_monitor ;
 char* longlong_hexchars (long long,char*) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (char*,...) ;

__attribute__((used)) static int
monitor_write_memory_longlongs (CORE_ADDR memaddr, char *myaddr, int len)
{
  static char hexstage[20];
  char *endstring;
  long long *llptr;
  long long value;
  int written = 0;
  llptr = (unsigned long long *) myaddr;
  if (len == 0)
    return 0;
  monitor_printf (current_monitor->setmem.cmdll, memaddr);
  monitor_expect_prompt (((void*)0), 0);
  while (len >= 8)
    {
      value = *llptr;
      endstring = longlong_hexchars (*llptr, hexstage);
      *endstring = '\0';
      monitor_printf ("%s\r", hexstage);
      llptr++;
      memaddr += 8;
      written += 8;

      monitor_expect_prompt (((void*)0), 0);
      len -= 8;
    }

  monitor_printf (current_monitor->getreg.term_cmd);
  monitor_expect_prompt (((void*)0), 0);
  return written;
}
