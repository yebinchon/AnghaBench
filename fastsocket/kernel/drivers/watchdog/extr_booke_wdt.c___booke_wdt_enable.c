
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SPRN_TCR ;
 int TCR_WIE ;
 int TCR_WRC (int ) ;
 int WDTP (int ) ;
 int WDTP_MASK ;
 int WRC_CHIP ;
 int __booke_wdt_ping (int *) ;
 int booke_wdt_period ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void __booke_wdt_enable(void *data)
{
 u32 val;


 __booke_wdt_ping(((void*)0));
 val = mfspr(SPRN_TCR);
 val &= ~WDTP_MASK;
 val |= (TCR_WIE|TCR_WRC(WRC_CHIP)|WDTP(booke_wdt_period));

 mtspr(SPRN_TCR, val);
}
