
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp116x {int dummy; } ;


 int isp116x_read_data16 (struct isp116x*) ;
 int isp116x_write_addr (struct isp116x*,unsigned int) ;

__attribute__((used)) static u16 isp116x_read_reg16(struct isp116x *isp116x, unsigned reg)
{
 isp116x_write_addr(isp116x, reg);
 return isp116x_read_data16(isp116x);
}
