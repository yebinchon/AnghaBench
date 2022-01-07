
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct wb35_reg {int EEPROMPhyType; int EEPROMRegion; int EP0VM_spin_lock; } ;
struct hw_data {scalar_t__ phy_type; int PowerIndexFromEEPROM; int VCO_trim; int Scan_Interval; scalar_t__ SurpriseRemove; scalar_t__ SoftwareSet; int PermanentMacAddress; int CurrentMacAddress; struct wb35_reg reg; } ;


 int BBProcessor_initial (struct hw_data*) ;
 int Dxx_initial (struct hw_data*) ;
 int ETH_ALEN ;
 int GetTxVgaFromEEPROM (struct hw_data*) ;
 int Mxx_initial (struct hw_data*) ;
 int REGION_AUTO ;
 int RFSynthesizer_initial (struct hw_data*) ;
 scalar_t__ RF_AIROHA_2230 ;
 scalar_t__ RF_AIROHA_2230S ;
 scalar_t__ RF_AIROHA_7230 ;
 scalar_t__ RF_DECIDE_BY_INF ;
 scalar_t__ RF_MAXIM_2825 ;
 scalar_t__ RF_MAXIM_2827 ;
 scalar_t__ RF_MAXIM_2828 ;
 scalar_t__ RF_MAXIM_2829 ;
 scalar_t__ RF_MAXIM_V1 ;
 scalar_t__ RF_WB_242 ;
 scalar_t__ RF_WB_242_1 ;
 int SCAN_MAX_CHNL_TIME ;
 int Uxx_ReadEthernetAddress (struct hw_data*) ;
 int Uxx_power_on_procedure (struct hw_data*) ;
 int Wb35Reg_ReadSync (struct hw_data*,int,int*) ;
 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;
 int Wb35Reg_phy_calibration (struct hw_data*) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_init (int *) ;

unsigned char Wb35Reg_initial(struct hw_data * pHwData)
{
 struct wb35_reg *reg=&pHwData->reg;
 u32 ltmp;
 u32 SoftwareSet, VCO_trim, TxVga, Region_ScanInterval;


 spin_lock_init( &reg->EP0VM_spin_lock );


 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x080d0000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &ltmp );


 reg->EEPROMPhyType = (u8)( ltmp & 0xff );




 if (reg->EEPROMPhyType != RF_DECIDE_BY_INF) {
  if( (reg->EEPROMPhyType == RF_MAXIM_2825) ||
   (reg->EEPROMPhyType == RF_MAXIM_2827) ||
   (reg->EEPROMPhyType == RF_MAXIM_2828) ||
   (reg->EEPROMPhyType == RF_MAXIM_2829) ||
   (reg->EEPROMPhyType == RF_MAXIM_V1) ||
   (reg->EEPROMPhyType == RF_AIROHA_2230) ||
   (reg->EEPROMPhyType == RF_AIROHA_2230S) ||
   (reg->EEPROMPhyType == RF_AIROHA_7230) ||
   (reg->EEPROMPhyType == RF_WB_242) ||
   (reg->EEPROMPhyType == RF_WB_242_1))
   pHwData->phy_type = reg->EEPROMPhyType;
 }


 Uxx_power_on_procedure( pHwData );


 Uxx_ReadEthernetAddress( pHwData );


 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x08200000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &VCO_trim );


 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x08210000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &SoftwareSet );


 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x08100000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &TxVga );


 Wb35Reg_WriteSync( pHwData, 0x03b4, 0x081d0000 );
 Wb35Reg_ReadSync( pHwData, 0x03b4, &Region_ScanInterval );


 memcpy( pHwData->CurrentMacAddress, pHwData->PermanentMacAddress, ETH_ALEN );


 pHwData->SoftwareSet = (u16)(SoftwareSet & 0xffff);
 TxVga &= 0x000000ff;
 pHwData->PowerIndexFromEEPROM = (u8)TxVga;
 pHwData->VCO_trim = (u8)VCO_trim & 0xff;
 if (pHwData->VCO_trim == 0xff)
  pHwData->VCO_trim = 0x28;

 reg->EEPROMRegion = (u8)(Region_ScanInterval>>8);
 if( reg->EEPROMRegion<1 || reg->EEPROMRegion>6 )
  reg->EEPROMRegion = REGION_AUTO;


 GetTxVgaFromEEPROM( pHwData );


 pHwData->Scan_Interval = (u8)(Region_ScanInterval & 0xff) * 10;
 if ((pHwData->Scan_Interval == 2550) || (pHwData->Scan_Interval < 10))
  pHwData->Scan_Interval = SCAN_MAX_CHNL_TIME;


 RFSynthesizer_initial(pHwData);

 BBProcessor_initial(pHwData);

 Wb35Reg_phy_calibration(pHwData);

 Mxx_initial(pHwData);
 Dxx_initial(pHwData);

 if (pHwData->SurpriseRemove)
  return 0;
 else
  return 1;
}
