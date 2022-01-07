
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
typedef enum msm_camio_clk_type { ____Placeholder_msm_camio_clk_type } msm_camio_clk_type ;






 int IS_ERR (struct clk*) ;
 struct clk* camio_mdc_clk ;
 struct clk* camio_vfe_axi_clk ;
 struct clk* camio_vfe_clk ;
 struct clk* camio_vfe_mdc_clk ;
 int clk_disable (struct clk*) ;
 int clk_put (struct clk*) ;

int msm_camio_clk_disable(enum msm_camio_clk_type clktype)
{
 int rc = 0;
 struct clk *clk = ((void*)0);

 switch (clktype) {
 case 128:
  clk = camio_vfe_mdc_clk;
  break;

 case 131:
  clk = camio_mdc_clk;
  break;

 case 129:
  clk = camio_vfe_clk;
  break;

 case 130:
  clk = camio_vfe_axi_clk;
  break;

 default:
  break;
 }

 if (!IS_ERR(clk)) {
  clk_disable(clk);
  clk_put(clk);
 } else
  rc = -1;

 return rc;
}
