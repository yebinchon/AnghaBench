
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ftiq_instr; int ftiq_pc; int ftiq_pid; } ;
typedef TYPE_2__ fasttrap_instr_query_t ;
struct TYPE_7__ {int* instr; int addr; TYPE_1__* dtp; int pid; } ;
typedef TYPE_3__ dtrace_dis_t ;
struct TYPE_5__ {int dt_ftfd; } ;


 int FASTTRAPIOC_GETINSTR ;
 int FASTTRAP_INSTR ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;

__attribute__((used)) static int
dt_getbyte(void *data)
{
 dtrace_dis_t *dis = data;
 int ret = *dis->instr;

 if (ret == FASTTRAP_INSTR) {
  fasttrap_instr_query_t instr;

  instr.ftiq_pid = dis->pid;
  instr.ftiq_pc = dis->addr;
  if (ioctl(dis->dtp->dt_ftfd, FASTTRAPIOC_GETINSTR, &instr) == 0)
   ret = instr.ftiq_instr;
 }

 dis->addr++;
 dis->instr++;

 return (ret);
}
