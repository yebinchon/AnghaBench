
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tridentfb_par {int eng_oper; } ;


 int DRAWFL ;
 int OLDCMD ;
 int OLDDIM ;
 int OLDDST ;
 int ROP_P ;
 int point (int,int) ;
 int t_outb (struct tridentfb_par*,int,int) ;
 int writemmr (struct tridentfb_par*,int,int) ;

__attribute__((used)) static void xp_fill_rect(struct tridentfb_par *par,
    u32 x, u32 y, u32 w, u32 h, u32 c, u32 rop)
{
 writemmr(par, 0x2127, ROP_P);
 writemmr(par, 0x2158, c);
 writemmr(par, DRAWFL, 0x4000);
 writemmr(par, OLDDIM, point(h, w));
 writemmr(par, OLDDST, point(y, x));
 t_outb(par, 0x01, OLDCMD);
 t_outb(par, par->eng_oper, 0x2125);
}
