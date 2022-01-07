
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct isp116x {int dummy; } ;


 int isp116x_raw_read_data16 (struct isp116x*) ;
 int isp116x_read_data16 (struct isp116x*) ;
 int le16_to_cpu (int) ;

__attribute__((used)) static void read_ptddata_from_fifo(struct isp116x *isp116x, void *buf, int len)
{
 u8 *dp = (u8 *) buf;
 u16 *dp2 = (u16 *) buf;
 u16 w;
 int quot = len % 4;





 if ((unsigned long)dp2 & 1) {

  for (; len > 1; len -= 2) {
   w = isp116x_raw_read_data16(isp116x);
   *dp++ = w & 0xff;
   *dp++ = (w >> 8) & 0xff;
  }

  if (len)
   *dp = 0xff & isp116x_read_data16(isp116x);
 } else {

  for (; len > 1; len -= 2) {

   *dp2++ = le16_to_cpu(isp116x_raw_read_data16(isp116x));
  }

  if (len)
   *(u8 *) dp2 = 0xff & isp116x_read_data16(isp116x);
 }
 if (quot == 1 || quot == 2)
  isp116x_raw_read_data16(isp116x);
}
