
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SOFT_RST ;
 int fsi_master_read (int ) ;
 int fsi_master_write (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void fsi_soft_all_reset(void)
{
 u32 status = fsi_master_read(SOFT_RST);


 status &= 0x000000ff;
 fsi_master_write(SOFT_RST, status);
 mdelay(10);


 status &= 0x000000f0;
 fsi_master_write(SOFT_RST, status);
 status |= 0x00000001;
 fsi_master_write(SOFT_RST, status);
 mdelay(10);
}
