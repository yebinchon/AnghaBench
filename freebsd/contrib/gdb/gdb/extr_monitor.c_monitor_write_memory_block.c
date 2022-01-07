
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmdll; } ;
struct TYPE_4__ {TYPE_1__ setmem; } ;
typedef int CORE_ADDR ;


 TYPE_2__* current_monitor ;
 int monitor_write_memory_bytes (int ,char*,int) ;
 int monitor_write_memory_longlongs (int ,char*,int) ;

__attribute__((used)) static int
monitor_write_memory_block (CORE_ADDR memaddr, char *myaddr, int len)
{
  int written;
  written = 0;


  if ((len > 8) && (((len & 0x07)) == 0) && current_monitor->setmem.cmdll)
    {
      return monitor_write_memory_longlongs (memaddr, myaddr, len);
    }

  written = monitor_write_memory_bytes (memaddr, myaddr, len);
  return written;
}
