
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;


 int Adapter ;
 int COMP_CMD ;
 int COMP_ERR ;
 int RT_TRACE (int ,char*,...) ;
 scalar_t__ RT_USB_CANNOT_IO (int ) ;
 int WFM5 ;
 scalar_t__ read_nic_dword (struct net_device*,int ) ;
 int udelay (int) ;

void ChkFwCmdIoDone(struct net_device* dev)
{
 u16 PollingCnt = 1000;
 u32 tmpValue;

 do
 {







  udelay(10);
  tmpValue = read_nic_dword(dev, WFM5);
  if(tmpValue == 0)
  {
   RT_TRACE(COMP_CMD, "[FW CMD] Set FW Cmd success!!\n");
   break;
  }
  else
  {
   RT_TRACE(COMP_CMD, "[FW CMD] Polling FW Cmd PollingCnt(%d)!!\n", PollingCnt);
  }
 }while( --PollingCnt );

 if(PollingCnt == 0)
 {
  RT_TRACE(COMP_ERR, "[FW CMD] Set FW Cmd fail!!\n");
 }
}
