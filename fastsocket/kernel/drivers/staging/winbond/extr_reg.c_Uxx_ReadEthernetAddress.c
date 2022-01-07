
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct hw_data {scalar_t__ PermanentMacAddress; } ;


 int Wb35Reg_ReadSync (struct hw_data*,int,scalar_t__*) ;
 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;
 scalar_t__ cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;

void
Uxx_ReadEthernetAddress( struct hw_data * pHwData )
{
 u32 ltmp;



 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x08000000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &ltmp );
 *(u16 *)pHwData->PermanentMacAddress = cpu_to_le16((u16)ltmp);
 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x08010000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &ltmp );
 *(u16 *)(pHwData->PermanentMacAddress + 2) = cpu_to_le16((u16)ltmp);
 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x08020000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &ltmp );
 *(u16 *)(pHwData->PermanentMacAddress + 4) = cpu_to_le16((u16)ltmp);
 *(u16 *)(pHwData->PermanentMacAddress + 6) = 0;
 Wb35Reg_WriteSync( pHwData, 0x03e8, cpu_to_le32(*(u32 *)pHwData->PermanentMacAddress) );
 Wb35Reg_WriteSync( pHwData, 0x03ec, cpu_to_le32(*(u32 *)(pHwData->PermanentMacAddress+4)) );
}
