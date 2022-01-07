
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int irqenb; } ;


 int DBG (int ,char*,char*,int ,int ) ;
 int HCATLBLKSZ ;
 int HCATLBUFSZ ;
 int HCATLCURR ;
 int HCATLDTC ;
 int HCATLDTCTO ;
 int HCATLLAST ;
 int HCATLSKIP ;
 int HCBUFSTAT ;
 int HCCHIPID ;
 int HCCMDSTAT ;
 int HCCONTROL ;
 int HCDIRADDR ;
 int HCDMACFG ;
 int HCFMINTVL ;
 int HCFMNUM ;
 int HCFMREM ;
 int HCHWCFG ;
 int HCINTENB ;
 int HCINTLBLKSZ ;
 int HCINTLBUFSZ ;
 int HCINTLCURR ;
 int HCINTLDONE ;
 int HCINTLLAST ;
 int HCINTLSKIP ;
 int HCINTSTAT ;
 int HCISTLBUFSZ ;
 int HCISTLRATE ;
 int HCLSTHRESH ;
 int HCREVISION ;
 int HCRHDESCA ;
 int HCRHDESCB ;
 int HCRHPORT1 ;
 int HCRHPORT2 ;
 int HCRHSTATUS ;
 int HCSCRATCH ;
 int HCXFERCTR ;
 int HCuPINT ;
 int HCuPINTENB ;
 int ISP1362_REG_HCuPINTENB ;
 int ISP1362_REG_NO (int ) ;
 scalar_t__ in_interrupt () ;
 int isp1362_show_reg (struct isp1362_hcd*,int ) ;

__attribute__((used)) static void __attribute__((__unused__)) isp1362_show_regs(struct isp1362_hcd *isp1362_hcd)
{
 isp1362_show_reg(isp1362_hcd, HCREVISION);
 isp1362_show_reg(isp1362_hcd, HCCONTROL);
 isp1362_show_reg(isp1362_hcd, HCCMDSTAT);
 isp1362_show_reg(isp1362_hcd, HCINTSTAT);
 isp1362_show_reg(isp1362_hcd, HCINTENB);
 isp1362_show_reg(isp1362_hcd, HCFMINTVL);
 isp1362_show_reg(isp1362_hcd, HCFMREM);
 isp1362_show_reg(isp1362_hcd, HCFMNUM);
 isp1362_show_reg(isp1362_hcd, HCLSTHRESH);
 isp1362_show_reg(isp1362_hcd, HCRHDESCA);
 isp1362_show_reg(isp1362_hcd, HCRHDESCB);
 isp1362_show_reg(isp1362_hcd, HCRHSTATUS);
 isp1362_show_reg(isp1362_hcd, HCRHPORT1);
 isp1362_show_reg(isp1362_hcd, HCRHPORT2);

 isp1362_show_reg(isp1362_hcd, HCHWCFG);
 isp1362_show_reg(isp1362_hcd, HCDMACFG);
 isp1362_show_reg(isp1362_hcd, HCXFERCTR);
 isp1362_show_reg(isp1362_hcd, HCuPINT);

 if (in_interrupt())
  DBG(0, "%-12s[%02x]:     %04x\n", "HCuPINTENB",
    ISP1362_REG_NO(ISP1362_REG_HCuPINTENB), isp1362_hcd->irqenb);
 else
  isp1362_show_reg(isp1362_hcd, HCuPINTENB);
 isp1362_show_reg(isp1362_hcd, HCCHIPID);
 isp1362_show_reg(isp1362_hcd, HCSCRATCH);
 isp1362_show_reg(isp1362_hcd, HCBUFSTAT);
 isp1362_show_reg(isp1362_hcd, HCDIRADDR);



 isp1362_show_reg(isp1362_hcd, HCISTLBUFSZ);
 isp1362_show_reg(isp1362_hcd, HCISTLRATE);
 isp1362_show_reg(isp1362_hcd, HCINTLBUFSZ);
 isp1362_show_reg(isp1362_hcd, HCINTLBLKSZ);
 isp1362_show_reg(isp1362_hcd, HCINTLDONE);
 isp1362_show_reg(isp1362_hcd, HCINTLSKIP);
 isp1362_show_reg(isp1362_hcd, HCINTLLAST);
 isp1362_show_reg(isp1362_hcd, HCINTLCURR);
 isp1362_show_reg(isp1362_hcd, HCATLBUFSZ);
 isp1362_show_reg(isp1362_hcd, HCATLBLKSZ);



 isp1362_show_reg(isp1362_hcd, HCATLSKIP);
 isp1362_show_reg(isp1362_hcd, HCATLLAST);
 isp1362_show_reg(isp1362_hcd, HCATLCURR);
 isp1362_show_reg(isp1362_hcd, HCATLDTC);
 isp1362_show_reg(isp1362_hcd, HCATLDTCTO);
}
