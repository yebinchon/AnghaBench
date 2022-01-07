
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {struct task_struct* idle; } ;


 TYPE_1__* cpu_rq (int) ;

struct task_struct *idle_task(int cpu)
{
 return cpu_rq(cpu)->idle;
}
