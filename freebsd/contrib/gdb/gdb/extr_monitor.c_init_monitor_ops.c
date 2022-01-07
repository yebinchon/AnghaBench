
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_3__ {scalar_t__ to_magic; } ;


 scalar_t__ OPS_MAGIC ;
 int init_base_monitor_ops () ;
 int memcpy (struct target_ops*,TYPE_1__*,int) ;
 TYPE_1__ monitor_ops ;

void
init_monitor_ops (struct target_ops *ops)
{
  if (monitor_ops.to_magic != OPS_MAGIC)
    init_base_monitor_ops ();

  memcpy (ops, &monitor_ops, sizeof monitor_ops);
}
