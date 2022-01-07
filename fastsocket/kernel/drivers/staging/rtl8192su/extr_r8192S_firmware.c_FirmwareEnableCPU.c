
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 int COMP_FIRMWARE ;
 int FEN_CPUEN ;
 int IMEM_RDY ;
 int RT_STATUS_FAILURE ;
 int RT_STATUS_SUCCESS ;
 int RT_TRACE (int ,char*,...) ;
 int SYS_CLKR ;
 int SYS_CPU_CLKSEL ;
 int SYS_FUNC_EN ;
 int TCR ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_word (struct net_device*,int ) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

RT_STATUS
FirmwareEnableCPU(struct net_device *dev)
{

 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 u8 tmpU1b, CPUStatus = 0;
 u16 tmpU2b;
 u32 iCheckTime = 200;

 RT_TRACE(COMP_FIRMWARE, "-->FirmwareEnableCPU()\n" );

 tmpU1b = read_nic_byte(dev, SYS_CLKR);
 write_nic_byte(dev, SYS_CLKR, (tmpU1b|SYS_CPU_CLKSEL));

 tmpU2b = read_nic_word(dev, SYS_FUNC_EN);
 write_nic_word(dev, SYS_FUNC_EN, (tmpU2b|FEN_CPUEN));


 do
 {
  CPUStatus = read_nic_byte(dev, TCR);
  if(CPUStatus& IMEM_RDY)
  {
   RT_TRACE(COMP_FIRMWARE, "IMEM Ready after CPU has refilled.\n");
   break;
  }


  udelay(100);
 }while(iCheckTime--);

 if(!(CPUStatus & IMEM_RDY))
  return RT_STATUS_FAILURE;

 RT_TRACE(COMP_FIRMWARE, "<--FirmwareEnableCPU(): rtStatus(%#x)\n", rtStatus);
 return rtStatus;
}
