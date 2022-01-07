
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
 int clk_enable (struct clk*) ;
 struct clk* clk_get (int *,char*) ;

int msm_camio_clk_enable(enum msm_camio_clk_type clktype)
{
 int rc = 0;
 struct clk *clk = ((void*)0);

 switch (clktype) {
 case 128:
  camio_vfe_mdc_clk =
  clk = clk_get(((void*)0), "vfe_mdc_clk");
  break;

 case 131:
  camio_mdc_clk =
  clk = clk_get(((void*)0), "mdc_clk");
  break;

 case 129:
  camio_vfe_clk =
  clk = clk_get(((void*)0), "vfe_clk");
  break;

 case 130:
  camio_vfe_axi_clk =
  clk = clk_get(((void*)0), "vfe_axi_clk");
  break;

 default:
  break;
 }

 if (!IS_ERR(clk))
  clk_enable(clk);
 else
  rc = -1;

 return rc;
}
