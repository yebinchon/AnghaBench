
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int EFUSE_CLK_CTRL ;
 int EFUSE_TEST ;
 int SYS_FUNC_EN ;
 int efuse_OneByteRead (struct net_device*,int ,unsigned char*) ;
 int efuse_one_byte_rw (struct net_device*,int,int,int*) ;
 int mdelay (int) ;
 int read_nic_byte (struct net_device*,int) ;
 int write_nic_byte (struct net_device*,int,int) ;

void efuse_access(struct net_device* dev, u8 bRead,u16 start_addr, u8 cnts, u8 *data)
{
 u8 efuse_clk_ori,efuse_clk_new;
 u32 i = 0;

 if(start_addr>0x200) return;



 efuse_clk_ori = read_nic_byte(dev,SYS_FUNC_EN+1);
 efuse_clk_new = efuse_clk_ori|0x20;

 if(efuse_clk_new!= efuse_clk_ori){

  write_nic_byte(dev, SYS_FUNC_EN+1, efuse_clk_new);
 }




 write_nic_byte(dev, EFUSE_TEST+3, (read_nic_byte(dev, EFUSE_TEST+3)|0x80));
 write_nic_byte(dev, EFUSE_CLK_CTRL, (read_nic_byte(dev, EFUSE_CLK_CTRL)|0x03));
 for(i=0;i<cnts;i++){
  efuse_one_byte_rw(dev,bRead, start_addr+i , data+i);

 }

 write_nic_byte(dev, EFUSE_TEST+3, read_nic_byte(dev, EFUSE_TEST+3)&0x7f);
 write_nic_byte(dev, EFUSE_CLK_CTRL, read_nic_byte(dev, EFUSE_CLK_CTRL)&0xfd);


 if(efuse_clk_new != efuse_clk_ori) write_nic_byte(dev, 0x10250003, efuse_clk_ori);

}
