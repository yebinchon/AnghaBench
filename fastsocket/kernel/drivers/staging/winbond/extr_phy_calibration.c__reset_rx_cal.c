
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_data {int revision; } ;


 int hw_get_dxx_reg (struct hw_data*,int,int*) ;
 int hw_set_dxx_reg (struct hw_data*,int,int) ;

void _reset_rx_cal(struct hw_data *phw_data)
{
 u32 val;

 hw_get_dxx_reg(phw_data, 0x54, &val);

 if (phw_data->revision == 0x2002)
 {
  val &= 0xFFFF0000;
 }
 else
 {
  val &= 0x000003FF;
 }

 hw_set_dxx_reg(phw_data, 0x54, val);
}
