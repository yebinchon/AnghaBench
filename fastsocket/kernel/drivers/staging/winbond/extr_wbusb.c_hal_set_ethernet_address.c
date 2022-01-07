
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hw_data {scalar_t__ CurrentMacAddress; scalar_t__ SurpriseRemove; } ;


 int AUTO_INCREMENT ;
 int ETH_ALEN ;
 int Wb35Reg_BurstWrite (struct hw_data*,int,int*,int,int ) ;
 int cpu_to_le32 (int) ;
 int memcpy (scalar_t__,int *,int ) ;

__attribute__((used)) static void
hal_set_ethernet_address(struct hw_data *pHwData, u8 * current_address)
{
 u32 ltmp[2];

 if (pHwData->SurpriseRemove)
  return;

 memcpy(pHwData->CurrentMacAddress, current_address, ETH_ALEN);

 ltmp[0] = cpu_to_le32(*(u32 *) pHwData->CurrentMacAddress);
 ltmp[1] =
     cpu_to_le32(*(u32 *) (pHwData->CurrentMacAddress + 4)) & 0xffff;

 Wb35Reg_BurstWrite(pHwData, 0x03e8, ltmp, 2, AUTO_INCREMENT);
}
