
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FIRMWARE_8192S_STATUS ;


 int COMP_ERR ;




 int FW_STATUS_READY ;
 int RT_TRACE (int ,char*,int) ;

FIRMWARE_8192S_STATUS
FirmwareGetNextStatus(FIRMWARE_8192S_STATUS FWCurrentStatus)
{
 FIRMWARE_8192S_STATUS NextFWStatus = 0;

 switch(FWCurrentStatus)
 {
  case 131:
   NextFWStatus = 128;
   break;

  case 128:
   NextFWStatus = 129;
   break;

  case 129:
   NextFWStatus = 130;
   break;

  case 130:
   NextFWStatus = FW_STATUS_READY;
   break;

  default:
   RT_TRACE(COMP_ERR,"Invalid FW Status(%#x)!!\n", FWCurrentStatus);
   break;
 }
 return NextFWStatus;
}
