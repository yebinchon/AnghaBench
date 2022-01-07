
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDMUX_HPCR_RXDSEL (int) ;
 int AUDMUX_HPCR_SYN ;
 int AUDMUX_HPCR_TCLKDIR ;
 int AUDMUX_HPCR_TFCSEL (int) ;
 int AUDMUX_HPCR_TFSDIR ;
 int AUDMUX_PPCR_RXDSEL (int ) ;
 int AUDMUX_PPCR_SYN ;
 int DAM_HPCR1 ;
 int DAM_PPCR1 ;
 int pr_debug (char*) ;

void audmux_connect_1_4(void)
{
 pr_debug("AUDMUX: normal operation mode\n");


 DAM_HPCR1 = 0x00000000;
 DAM_PPCR1 = 0x00000000;


 DAM_HPCR1 |= AUDMUX_HPCR_SYN;
 DAM_PPCR1 |= AUDMUX_PPCR_SYN;



 DAM_HPCR1 |= AUDMUX_HPCR_RXDSEL(3);
 DAM_PPCR1 |= AUDMUX_PPCR_RXDSEL(0);


 DAM_HPCR1 |= AUDMUX_HPCR_TFSDIR | AUDMUX_HPCR_TCLKDIR;
 DAM_HPCR1 |= AUDMUX_HPCR_TFCSEL(3);

 return;
}
