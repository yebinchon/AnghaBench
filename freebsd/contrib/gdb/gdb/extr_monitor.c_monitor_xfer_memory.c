
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct TYPE_2__ {int flags; } ;
typedef int CORE_ADDR ;


 int MO_HAS_BLOCKWRITES ;
 TYPE_1__* current_monitor ;
 int monitor_read_memory (int ,char*,int) ;
 int monitor_write_memory (int ,char*,int) ;
 int monitor_write_memory_block (int ,char*,int) ;

__attribute__((used)) static int
monitor_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
       struct mem_attrib *attrib, struct target_ops *target)
{
  int res;

  if (write)
    {
      if (current_monitor->flags & MO_HAS_BLOCKWRITES)
 res = monitor_write_memory_block(memaddr, myaddr, len);
      else
 res = monitor_write_memory(memaddr, myaddr, len);
    }
  else
    {
      res = monitor_read_memory(memaddr, myaddr, len);
    }

  return res;
}
