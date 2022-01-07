
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int for_each_rtx (int *,int ,void*) ;
 int mips_sim_wait_regs_2 ;

__attribute__((used)) static void
mips_sim_wait_regs_1 (rtx *x, void *data)
{
  for_each_rtx (x, mips_sim_wait_regs_2, data);
}
