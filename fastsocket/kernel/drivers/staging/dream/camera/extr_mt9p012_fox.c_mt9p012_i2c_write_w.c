
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int buf ;


 int CDBG (char*,unsigned short,unsigned short) ;
 scalar_t__ EIO ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ mt9p012_i2c_txdata (unsigned short,unsigned char*,int) ;

__attribute__((used)) static int32_t mt9p012_i2c_write_w(unsigned short saddr, unsigned short waddr,
 unsigned short wdata)
{
 int32_t rc = -EIO;
 unsigned char buf[4];

 memset(buf, 0, sizeof(buf));
 buf[0] = (waddr & 0xFF00)>>8;
 buf[1] = (waddr & 0x00FF);
 buf[2] = (wdata & 0xFF00)>>8;
 buf[3] = (wdata & 0x00FF);

 rc = mt9p012_i2c_txdata(saddr, buf, 4);

 if (rc < 0)
  CDBG("i2c_write_w failed, addr = 0x%x, val = 0x%x!\n",
   waddr, wdata);

 return rc;
}
