
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
typedef enum msm_camio_clk_src_type { ____Placeholder_msm_camio_clk_src_type } msm_camio_clk_src_type ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;


 struct clk* camio_vfe_clk ;
 int clk_set_flags (struct clk*,int) ;

void msm_camio_clk_sel(enum msm_camio_clk_src_type srctype)
{
 struct clk *clk = ((void*)0);

 clk = camio_vfe_clk;

 if (clk != ((void*)0) && clk != ERR_PTR(-ENOENT)) {
  switch (srctype) {
  case 128:
   clk_set_flags(clk, 0x00000100 << 1);
   break;

  case 129:
   clk_set_flags(clk, 0x00000100);
   break;

  default:
   break;
  }
 }
}
