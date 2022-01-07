
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MDA_STATUS_VSYNC ;
 int TYPE_HERC ;
 int TYPE_HERCCOLOR ;
 int TYPE_HERCPLUS ;
 int inb (int ) ;
 int inb_p (int ) ;
 int mda_status_port ;
 int mda_type ;
 char* mda_type_name ;
 scalar_t__ mda_vram_base ;
 int mda_vram_len ;
 int scr_readw (int*) ;
 int scr_writew (int,int*) ;
 int test_mda_b (int,int) ;
 int udelay (int) ;

__attribute__((used)) static int mda_detect(void)
{
 int count=0;
 u16 *p, p_save;
 u16 *q, q_save;



 p = (u16 *) mda_vram_base;
 q = (u16 *) (mda_vram_base + 0x01000);

 p_save = scr_readw(p); q_save = scr_readw(q);

 scr_writew(0xAA55, p); if (scr_readw(p) == 0xAA55) count++;
 scr_writew(0x55AA, p); if (scr_readw(p) == 0x55AA) count++;
 scr_writew(p_save, p);

 if (count != 2) {
  return 0;
 }



 scr_writew(0xA55A, q); scr_writew(0x0000, p);
 if (scr_readw(q) == 0xA55A) count++;

 scr_writew(0x5AA5, q); scr_writew(0x0000, p);
 if (scr_readw(q) == 0x5AA5) count++;

 scr_writew(p_save, p); scr_writew(q_save, q);

 if (count == 4) {
  mda_vram_len = 0x02000;
 }
 p_save = q_save = inb_p(mda_status_port) & MDA_STATUS_VSYNC;

 for (count=0; count < 50000 && p_save == q_save; count++) {
  q_save = inb(mda_status_port) & MDA_STATUS_VSYNC;
  udelay(2);
 }

 if (p_save != q_save) {
  switch (inb_p(mda_status_port) & 0x70) {
   case 0x10:
    mda_type = TYPE_HERCPLUS;
    mda_type_name = "HerculesPlus";
    break;
   case 0x50:
    mda_type = TYPE_HERCCOLOR;
    mda_type_name = "HerculesColor";
    break;
   default:
    mda_type = TYPE_HERC;
    mda_type_name = "Hercules";
    break;
  }
 }

 return 1;
}
