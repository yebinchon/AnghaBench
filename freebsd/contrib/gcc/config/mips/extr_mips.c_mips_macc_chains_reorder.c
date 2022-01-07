
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ get_attr_may_clobber_hilo (int ) ;
 scalar_t__ mips_linked_madd_p (scalar_t__,int ) ;
 scalar_t__ mips_macc_chains_last_hilo ;
 int mips_promote_ready (int *,int,int) ;
 scalar_t__ recog_memoized (int ) ;

__attribute__((used)) static void
mips_macc_chains_reorder (rtx *ready, int nready)
{
  int i, j;

  if (mips_macc_chains_last_hilo != 0)
    for (i = nready - 1; i >= 0; i--)
      if (mips_linked_madd_p (mips_macc_chains_last_hilo, ready[i]))
 {
   for (j = nready - 1; j > i; j--)
     if (recog_memoized (ready[j]) >= 0
  && get_attr_may_clobber_hilo (ready[j]))
       {
  mips_promote_ready (ready, i, j);
  break;
       }
   break;
 }
}
