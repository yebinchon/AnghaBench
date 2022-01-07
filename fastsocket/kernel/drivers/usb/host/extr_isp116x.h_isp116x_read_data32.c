
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp116x {int data_reg; } ;


 int isp116x_delay (struct isp116x*,int) ;
 scalar_t__ readw (int ) ;

__attribute__((used)) static inline u32 isp116x_read_data32(struct isp116x *isp116x)
{
 u32 val;

 val = (u32) readw(isp116x->data_reg);
 isp116x_delay(isp116x, 150);
 val |= ((u32) readw(isp116x->data_reg)) << 16;
 isp116x_delay(isp116x, 150);
 return val;
}
