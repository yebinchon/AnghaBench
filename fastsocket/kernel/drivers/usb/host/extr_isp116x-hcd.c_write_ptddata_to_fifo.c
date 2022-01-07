
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct isp116x {int dummy; } ;


 int cpu_to_le16 (int ) ;
 int isp116x_raw_write_data16 (struct isp116x*,int) ;
 int isp116x_write_data16 (struct isp116x*,int) ;

__attribute__((used)) static void write_ptddata_to_fifo(struct isp116x *isp116x, void *buf, int len)
{
 u8 *dp = (u8 *) buf;
 u16 *dp2 = (u16 *) buf;
 u16 w;
 int quot = len % 4;





 if ((unsigned long)dp2 & 1) {

  for (; len > 1; len -= 2) {
   w = *dp++;
   w |= *dp++ << 8;
   isp116x_raw_write_data16(isp116x, w);
  }
  if (len)
   isp116x_write_data16(isp116x, (u16) * dp);
 } else {

  for (; len > 1; len -= 2) {

   isp116x_raw_write_data16(isp116x, cpu_to_le16(*dp2++));
  }

  if (len)
   isp116x_write_data16(isp116x, 0xff & *((u8 *) dp2));
 }
 if (quot == 1 || quot == 2)
  isp116x_raw_write_data16(isp116x, 0);
}
