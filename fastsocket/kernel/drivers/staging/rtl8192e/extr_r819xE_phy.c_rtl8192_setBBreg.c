
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef int OriginalValue ;


 int bMaskDWord ;
 int read_nic_dword (struct net_device*,int) ;
 int rtl8192_CalculateBitShift (int) ;
 int write_nic_dword (struct net_device*,int,int) ;

void rtl8192_setBBreg(struct net_device* dev, u32 dwRegAddr, u32 dwBitMask, u32 dwData)
{

 u32 OriginalValue, BitShift, NewValue;

 if(dwBitMask!= bMaskDWord)
 {
  OriginalValue = read_nic_dword(dev, dwRegAddr);
  BitShift = rtl8192_CalculateBitShift(dwBitMask);
             NewValue = (((OriginalValue) & (~dwBitMask)) | (dwData << BitShift));
  write_nic_dword(dev, dwRegAddr, NewValue);
 }else
  write_nic_dword(dev, dwRegAddr, dwData);
 return;
}
