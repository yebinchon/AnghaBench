
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mavenregs {int dummy; } ;
struct matrox_fb_info {int dummy; } ;


 int LR (int) ;
 int cve2_set_reg (struct matrox_fb_info*,int,int) ;

__attribute__((used)) static void cve2_init_TV(struct matrox_fb_info *minfo,
    const struct mavenregs *m)
{
 int i;

 LR(0x80);
 LR(0x82); LR(0x83);
 LR(0x84); LR(0x85);

 cve2_set_reg(minfo, 0x3E, 0x01);

 for (i = 0; i < 0x3E; i++) {
  LR(i);
 }
 cve2_set_reg(minfo, 0x3E, 0x00);
}
