
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 int COMP_INIT ;
 int MAC_2T_ArrayLength ;
 int RT_STATUS_SUCCESS ;
 int RT_TRACE (int ,char*) ;
 int* Rtl819XMAC_Array ;
 int write_nic_byte (struct net_device*,int,int ) ;

__attribute__((used)) static RT_STATUS
phy_ConfigMACWithHeaderFile(struct net_device* dev)
{
 u32 i = 0;
 u32 ArrayLength = 0;
 u32* ptrArray;
 {
  RT_TRACE(COMP_INIT, "Read Rtl819XMACPHY_Array\n");
  ArrayLength = MAC_2T_ArrayLength;
  ptrArray = Rtl819XMAC_Array;
 }
 for(i = 0 ;i < ArrayLength;i=i+2){
  write_nic_byte(dev, ptrArray[i], (u8)ptrArray[i+1]);
 }

 return RT_STATUS_SUCCESS;
}
