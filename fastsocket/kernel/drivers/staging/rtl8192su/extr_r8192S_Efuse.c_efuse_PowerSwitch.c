
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;


 scalar_t__ EFUSE_CLK ;
 scalar_t__ EFUSE_TEST ;
 scalar_t__ TRUE ;
 scalar_t__ read_nic_byte (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

__attribute__((used)) static void
efuse_PowerSwitch(struct net_device* dev, u8 PwrState)
{
 u8 tempval;
 if (PwrState == TRUE)
 {

  tempval = read_nic_byte(dev, EFUSE_TEST+3);
  write_nic_byte(dev, EFUSE_TEST+3, (tempval | 0x80));


  write_nic_byte(dev, EFUSE_CLK, 0x03);
 }
 else
 {

  tempval = read_nic_byte(dev, EFUSE_TEST+3);
  write_nic_byte(dev, EFUSE_TEST+3, (tempval & 0x7F));


  write_nic_byte(dev, EFUSE_CLK, 0x02);
 }

}
