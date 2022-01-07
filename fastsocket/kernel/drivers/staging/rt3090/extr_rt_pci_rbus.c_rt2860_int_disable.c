
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned int int_disable_mask; int int_enable_reg; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;


 int INT_MASK_CSR ;
 int RTMP_CLEAR_FLAG (TYPE_1__*,int ) ;
 int RTMP_IO_WRITE32 (TYPE_1__*,int ,int) ;
 int fRTMP_ADAPTER_INTERRUPT_ACTIVE ;

__attribute__((used)) static inline void rt2860_int_disable(PRTMP_ADAPTER pAd, unsigned int mode)
{
 u32 regValue;

 pAd->int_disable_mask |= mode;
 regValue = pAd->int_enable_reg & ~(pAd->int_disable_mask);
 RTMP_IO_WRITE32(pAd, INT_MASK_CSR, regValue);

 if (regValue == 0)
 {
  RTMP_CLEAR_FLAG(pAd, fRTMP_ADAPTER_INTERRUPT_ACTIVE);
 }
}
