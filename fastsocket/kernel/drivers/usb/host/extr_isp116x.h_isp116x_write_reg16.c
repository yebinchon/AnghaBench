
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp116x {int dummy; } ;


 unsigned int ISP116x_WRITE_OFFSET ;
 int isp116x_write_addr (struct isp116x*,unsigned int) ;
 int isp116x_write_data16 (struct isp116x*,int ) ;

__attribute__((used)) static void isp116x_write_reg16(struct isp116x *isp116x, unsigned reg,
    unsigned val)
{
 isp116x_write_addr(isp116x, reg | ISP116x_WRITE_OFFSET);
 isp116x_write_data16(isp116x, (u16) (val & 0xffff));
}
