
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;
typedef int RF90_RADIO_PATH_E ;
typedef int HW90_BLOCK_E ;


 int COMP_ERR ;
 int COMP_INIT ;




 int RT_STATUS_FAILURE ;
 int RT_STATUS_SUCCESS ;
 int RT_TRACE (int ,char*,...) ;
 int bMaskDWord ;
 int bRFRegOffsetMask ;
 int mdelay (int) ;
 int read_nic_dword (struct net_device*,int) ;
 int rtl8192_phy_QueryRFReg (struct net_device*,int ,int,int ) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int ,int,int ,int) ;
 int write_nic_dword (struct net_device*,int,int) ;

RT_STATUS
PHY_CheckBBAndRFOK(
 struct net_device* dev,
 HW90_BLOCK_E CheckBlock,
 RF90_RADIO_PATH_E eRFPath
 )
{

 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 u32 i, CheckTimes = 4,ulRegRead = 0;
 u32 WriteAddr[4];
 u32 WriteData[] = {0xfffff027, 0xaa55a02f, 0x00000027, 0x55aa502f};


 WriteAddr[131] = 0x100;
 WriteAddr[130] = 0x900;
 WriteAddr[129] = 0x800;
 WriteAddr[128] = 0x3;

 for(i=0 ; i < CheckTimes ; i++)
 {




  switch(CheckBlock)
  {
  case 131:

   RT_TRACE(COMP_INIT, "PHY_CheckBBRFOK(): Never Write 0x100 here!\n");
   break;

  case 130:
  case 129:
   write_nic_dword(dev, WriteAddr[CheckBlock], WriteData[i]);
   ulRegRead = read_nic_dword(dev, WriteAddr[CheckBlock]);
   break;

  case 128:





   WriteData[i] &= 0xfff;
   rtl8192_phy_SetRFReg(dev, eRFPath, WriteAddr[128], bRFRegOffsetMask, WriteData[i]);

   mdelay(10);
   ulRegRead = rtl8192_phy_QueryRFReg(dev, eRFPath, WriteAddr[128], bMaskDWord);
   mdelay(10);

   break;

  default:
   rtStatus = RT_STATUS_FAILURE;
   break;
  }





  if(ulRegRead != WriteData[i])
  {

   RT_TRACE(COMP_ERR, "read back error(read:%x, write:%x)\n", ulRegRead, WriteData[i]);
   rtStatus = RT_STATUS_FAILURE;
   break;
  }
 }

 return rtStatus;
}
