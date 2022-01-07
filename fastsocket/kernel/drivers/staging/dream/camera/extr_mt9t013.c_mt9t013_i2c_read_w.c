
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int buf ;


 scalar_t__ EIO ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ mt9t013_i2c_rxdata (unsigned short,unsigned char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int32_t mt9t013_i2c_read_w(unsigned short saddr,
 unsigned short raddr, unsigned short *rdata)
{
 int32_t rc = 0;
 unsigned char buf[4];

 if (!rdata)
  return -EIO;

 memset(buf, 0, sizeof(buf));

 buf[0] = (raddr & 0xFF00)>>8;
 buf[1] = (raddr & 0x00FF);

 rc = mt9t013_i2c_rxdata(saddr, buf, 2);
 if (rc < 0)
  return rc;

 *rdata = buf[0] << 8 | buf[1];

 if (rc < 0)
  pr_err("mt9t013_i2c_read failed!\n");

 return rc;
}
