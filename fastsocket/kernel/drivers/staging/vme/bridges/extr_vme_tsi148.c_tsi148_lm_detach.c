
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_lm_resource {int mtx; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int* TSI148_LCSR_INTC_LMC ;
 scalar_t__ TSI148_LCSR_INTEN ;
 int* TSI148_LCSR_INTEN_LMEN ;
 scalar_t__ TSI148_LCSR_INTEO ;
 int* TSI148_LCSR_INTEO_LMEO ;
 int TSI148_LCSR_INTS_LM0S ;
 int TSI148_LCSR_INTS_LM1S ;
 int TSI148_LCSR_INTS_LM2S ;
 int TSI148_LCSR_INTS_LM3S ;
 scalar_t__ TSI148_LCSR_LMAT ;
 int TSI148_LCSR_LMAT_EN ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;
 int ** lm_callback ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* tsi148_bridge ;

int tsi148_lm_detach(struct vme_lm_resource *lm, int monitor)
{
 u32 lm_en, tmp;

 mutex_lock(&(lm->mtx));


 lm_en = ioread32be(tsi148_bridge->base + TSI148_LCSR_INTEN);
 lm_en &= ~TSI148_LCSR_INTEN_LMEN[monitor];
 iowrite32be(lm_en, tsi148_bridge->base + TSI148_LCSR_INTEN);

 tmp = ioread32be(tsi148_bridge->base + TSI148_LCSR_INTEO);
 tmp &= ~TSI148_LCSR_INTEO_LMEO[monitor];
 iowrite32be(tmp, tsi148_bridge->base + TSI148_LCSR_INTEO);

 iowrite32be(TSI148_LCSR_INTC_LMC[monitor],
   tsi148_bridge->base + TSI148_LCSR_INTEO);


 lm_callback[monitor] = ((void*)0);


 if ((lm_en & (TSI148_LCSR_INTS_LM0S | TSI148_LCSR_INTS_LM1S |
   TSI148_LCSR_INTS_LM2S | TSI148_LCSR_INTS_LM3S)) == 0) {
  tmp = ioread32be(tsi148_bridge->base + TSI148_LCSR_LMAT);
  tmp &= ~TSI148_LCSR_LMAT_EN;
  iowrite32be(tmp, tsi148_bridge->base + TSI148_LCSR_LMAT);
 }

 mutex_unlock(&(lm->mtx));

 return 0;
}
