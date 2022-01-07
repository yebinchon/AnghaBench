
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfe_irq_composite_mask_config {int ceDoneSel; int viewIrqComMask; int encIrqComMask; } ;
struct VFE_Irq_Composite_MaskType {int ceDoneSelBits; int viewIrqComMaskBits; int encIrqComMaskBits; } ;
typedef int packedData ;


 int memset (struct VFE_Irq_Composite_MaskType*,int ,int) ;

__attribute__((used)) static uint32_t
vfe_irq_composite_pack(struct vfe_irq_composite_mask_config data)
{
 struct VFE_Irq_Composite_MaskType packedData;

 memset(&packedData, 0, sizeof(packedData));

 packedData.encIrqComMaskBits = data.encIrqComMask;
 packedData.viewIrqComMaskBits = data.viewIrqComMask;
 packedData.ceDoneSelBits = data.ceDoneSel;

 return *((uint32_t *)&packedData);
}
