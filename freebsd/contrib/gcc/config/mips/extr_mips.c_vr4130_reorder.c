
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int mips_promote_ready (int *,int,int) ;
 scalar_t__ vr4130_swap_insns_p (int ,int ) ;

__attribute__((used)) static void
vr4130_reorder (rtx *ready, int nready)
{
  if (vr4130_swap_insns_p (ready[nready - 1], ready[nready - 2]))
    mips_promote_ready (ready, nready - 2, nready - 1);
}
