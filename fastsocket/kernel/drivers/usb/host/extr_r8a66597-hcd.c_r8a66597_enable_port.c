
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {int dummy; } ;


 int ATTCHE ;
 int BURST ;
 int CPU_ADR_RD_WR ;
 int DCFM ;
 int DRPD ;
 int DTCHE ;
 int HSE ;
 int get_dmacfg_reg (int) ;
 int get_intenb_reg (int) ;
 int get_syscfg_reg (int) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int,int ) ;
 int r8a66597_write (struct r8a66597*,int,int ) ;

__attribute__((used)) static void r8a66597_enable_port(struct r8a66597 *r8a66597, int port)
{
 u16 val;

 val = port ? DRPD : DCFM | DRPD;
 r8a66597_bset(r8a66597, val, get_syscfg_reg(port));
 r8a66597_bset(r8a66597, HSE, get_syscfg_reg(port));

 r8a66597_write(r8a66597, BURST | CPU_ADR_RD_WR, get_dmacfg_reg(port));
 r8a66597_bclr(r8a66597, DTCHE, get_intenb_reg(port));
 r8a66597_bset(r8a66597, ATTCHE, get_intenb_reg(port));
}
