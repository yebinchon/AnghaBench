
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coredump_params {scalar_t__ signr; } ;
struct TYPE_2__ {int pid; int comm; } ;


 TYPE_1__* current ;
 int printk (char*,int ,int ,int) ;

__attribute__((used)) static int flat_core_dump(struct coredump_params *cprm)
{
 printk("Process %s:%d received signr %d and should have core dumped\n",
   current->comm, current->pid, (int) cprm->signr);
 return(1);
}
