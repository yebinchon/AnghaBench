
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int buf ;


 int CDBG (char*,unsigned short,unsigned short,unsigned short) ;
 scalar_t__ EIO ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ mt9p012_i2c_txdata (unsigned short,unsigned char*,int) ;

__attribute__((used)) static int32_t mt9p012_i2c_write_b(unsigned short saddr, unsigned short baddr,
 unsigned short bdata)
{
 int32_t rc = -EIO;
 unsigned char buf[2];

 memset(buf, 0, sizeof(buf));
 buf[0] = baddr;
 buf[1] = bdata;
 rc = mt9p012_i2c_txdata(saddr, buf, 2);

 if (rc < 0)
  CDBG("i2c_write failed, saddr = 0x%x addr = 0x%x, val =0x%x!\n",
  saddr, baddr, bdata);

 return rc;
}
