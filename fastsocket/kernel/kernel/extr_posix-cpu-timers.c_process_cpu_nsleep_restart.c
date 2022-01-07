
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct restart_block {int dummy; } ;


 long EINVAL ;

__attribute__((used)) static long process_cpu_nsleep_restart(struct restart_block *restart_block)
{
 return -EINVAL;
}
