
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t; } ;


 int NR_CPUS ;
 TYPE_1__* cvm_oct_tasklet ;
 int cvm_oct_tasklet_rx ;
 int tasklet_init (int *,int ,int ) ;

void cvm_oct_rx_initialize(void)
{
 int i;

 for (i = 0; i < NR_CPUS; i++)
  tasklet_init(&cvm_oct_tasklet[i].t, cvm_oct_tasklet_rx, 0);
}
