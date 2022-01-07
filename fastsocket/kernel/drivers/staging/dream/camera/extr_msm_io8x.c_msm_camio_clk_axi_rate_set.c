
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* camio_vfe_axi_clk ;
 int clk_set_rate (struct clk*,int) ;

void msm_camio_clk_axi_rate_set(int rate)
{
 struct clk *clk = camio_vfe_axi_clk;

 clk_set_rate(clk, rate);
}
