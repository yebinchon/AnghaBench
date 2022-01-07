
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int read_nic_dword (struct net_device*,int) ;
 int rtl8192_CalculateBitShift (int) ;

u32 rtl8192_QueryBBReg(struct net_device* dev, u32 dwRegAddr, u32 dwBitMask)
{
 u32 Ret = 0, OriginalValue, BitShift;

 OriginalValue = read_nic_dword(dev, dwRegAddr);
 BitShift = rtl8192_CalculateBitShift(dwBitMask);
 Ret = (OriginalValue & dwBitMask) >> BitShift;

 return (Ret);
}
