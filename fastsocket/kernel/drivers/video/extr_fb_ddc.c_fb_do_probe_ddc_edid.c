
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_adapter {int dev; } ;


 int DDC_ADDR ;
 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int I2C_M_RD ;
 int dev_warn (int *,char*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;

__attribute__((used)) static unsigned char *fb_do_probe_ddc_edid(struct i2c_adapter *adapter)
{
 unsigned char start = 0x0;
 unsigned char *buf = kmalloc(EDID_LENGTH, GFP_KERNEL);
 struct i2c_msg msgs[] = {
  {
   .addr = DDC_ADDR,
   .flags = 0,
   .len = 1,
   .buf = &start,
  }, {
   .addr = DDC_ADDR,
   .flags = I2C_M_RD,
   .len = EDID_LENGTH,
   .buf = buf,
  }
 };

 if (!buf) {
  dev_warn(&adapter->dev, "unable to allocate memory for EDID "
    "block.\n");
  return ((void*)0);
 }

 if (i2c_transfer(adapter, msgs, 2) == 2)
  return buf;

 dev_warn(&adapter->dev, "unable to read EDID block.\n");
 kfree(buf);
 return ((void*)0);
}
