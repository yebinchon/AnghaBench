
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp116x {int data_reg; } ;


 int isp116x_delay (struct isp116x*,int) ;
 int readw (int ) ;

__attribute__((used)) static inline u16 isp116x_read_data16(struct isp116x *isp116x)
{
 u16 val;

 val = readw(isp116x->data_reg);
 isp116x_delay(isp116x, 150);
 return val;
}
