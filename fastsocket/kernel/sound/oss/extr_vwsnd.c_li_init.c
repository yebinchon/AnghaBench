
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int LI_HC_LINK_ENABLE ;
 int LI_HC_RESET ;
 int LI_HOST_CONTROLLER ;
 int li_writel (int *,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int li_init(lithium_t *lith)
{




 li_writel(lith, LI_HOST_CONTROLLER, LI_HC_RESET);
 udelay(1);





 li_writel(lith, LI_HOST_CONTROLLER, LI_HC_LINK_ENABLE);
 udelay(1);

 return 0;
}
