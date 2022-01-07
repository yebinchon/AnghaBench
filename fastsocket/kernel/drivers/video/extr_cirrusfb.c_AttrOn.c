
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrusfb_info {int regbase; } ;


 int CL_CRT24 ;
 int VGA_ATT_IW ;
 int VGA_ATT_R ;
 int assert (int ) ;
 int vga_r (int ,int ) ;
 int vga_rcrt (int ,int ) ;
 int vga_w (int ,int ,int) ;

__attribute__((used)) static void AttrOn(const struct cirrusfb_info *cinfo)
{
 assert(cinfo != ((void*)0));

 if (vga_rcrt(cinfo->regbase, CL_CRT24) & 0x80) {


  vga_w(cinfo->regbase, VGA_ATT_IW,
        vga_r(cinfo->regbase, VGA_ATT_R));
 }


 vga_w(cinfo->regbase, VGA_ATT_IW, 0x33);


 vga_w(cinfo->regbase, VGA_ATT_IW, 0x00);
}
