
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp116x {int dummy; } ;


 int isp116x_read_data32 (struct isp116x*) ;
 int isp116x_write_addr (struct isp116x*,unsigned int) ;

__attribute__((used)) static u32 isp116x_read_reg32(struct isp116x *isp116x, unsigned reg)
{
 isp116x_write_addr(isp116x, reg);
 return isp116x_read_data32(isp116x);
}
