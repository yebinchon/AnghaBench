
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ffb_par {scalar_t__ rop_cache; TYPE_1__* fbc; } ;
struct TYPE_2__ {int rop; } ;


 int FFBFifo (struct ffb_par*,int) ;
 int upa_writel (scalar_t__,int *) ;

__attribute__((used)) static __inline__ void ffb_rop(struct ffb_par *par, u32 rop)
{
 if (par->rop_cache != rop) {
  FFBFifo(par, 1);
  upa_writel(rop, &par->fbc->rop);
  par->rop_cache = rop;
 }
}
