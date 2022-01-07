
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgastate {int vgabase; } ;
struct vc_data {int vc_hi_font_mask; int * vc_sw; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 int EINVAL ;
 int MAX_NR_CONSOLES ;
 int VGA_AR_ENABLE_DISPLAY ;
 int VGA_ATC_PLANE_ENABLE ;
 int VGA_GFX_MISC ;
 int VGA_GFX_MODE ;
 int VGA_GFX_PLANE_READ ;
 scalar_t__ VGA_MAP_MEM (int ,int ) ;
 int VGA_SEQ_CHARACTER_MAP ;
 int VGA_SEQ_MEMORY_MODE ;
 int VGA_SEQ_PLANE_WRITE ;
 int VGA_SEQ_RESET ;
 scalar_t__ VIDEO_TYPE_EGAM ;
 scalar_t__ VIDEO_TYPE_VGAC ;
 int blackwmap ;
 int cmapsz ;
 int colourmap ;
 int cond_resched () ;
 int inb_p (unsigned short) ;
 int lock_kernel () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unlock_kernel () ;
 TYPE_1__* vc_cons ;
 int vga_512_chars ;
 int vga_con ;
 int vga_font_is_default ;
 int vga_lock ;
 char vga_readb (char*) ;
 int vga_video_port_reg ;
 scalar_t__ vga_video_type ;
 int vga_wattr (int ,int ,int) ;
 int vga_wgfx (int ,int ,int) ;
 int vga_writeb (char,char*) ;
 int vga_wseq (int ,int ,int) ;

__attribute__((used)) static int vgacon_do_font_op(struct vgastate *state,char *arg,int set,int ch512)
{
 unsigned short video_port_status = vga_video_port_reg + 6;
 int font_select = 0x00, beg, i;
 char *charmap;

 if (vga_video_type != VIDEO_TYPE_EGAM) {
  charmap = (char *) VGA_MAP_MEM(colourmap, 0);
  beg = 0x0e;




 } else {
  charmap = (char *) VGA_MAP_MEM(blackwmap, 0);
  beg = 0x0a;
 }
 if (set) {
  vga_font_is_default = !arg;
  if (!arg)
   ch512 = 0;
  font_select = arg ? (ch512 ? 0x0e : 0x0a) : 0x00;
 }

 if (!vga_font_is_default)
  charmap += 4 * cmapsz;


 unlock_kernel();
 spin_lock_irq(&vga_lock);

 vga_wseq(state->vgabase, VGA_SEQ_RESET, 0x1);

 vga_wseq(state->vgabase, VGA_SEQ_PLANE_WRITE, 0x04);

 vga_wseq(state->vgabase, VGA_SEQ_MEMORY_MODE, 0x07);

 vga_wseq(state->vgabase, VGA_SEQ_RESET, 0x03);


 vga_wgfx(state->vgabase, VGA_GFX_PLANE_READ, 0x02);

 vga_wgfx(state->vgabase, VGA_GFX_MODE, 0x00);

 vga_wgfx(state->vgabase, VGA_GFX_MISC, 0x00);
 spin_unlock_irq(&vga_lock);

 if (arg) {
  if (set)
   for (i = 0; i < cmapsz; i++) {
    vga_writeb(arg[i], charmap + i);
    cond_resched();
   }
  else
   for (i = 0; i < cmapsz; i++) {
    arg[i] = vga_readb(charmap + i);
    cond_resched();
   }






  if (ch512) {
   charmap += 2 * cmapsz;
   arg += cmapsz;
   if (set)
    for (i = 0; i < cmapsz; i++) {
     vga_writeb(arg[i], charmap + i);
     cond_resched();
    }
   else
    for (i = 0; i < cmapsz; i++) {
     arg[i] = vga_readb(charmap + i);
     cond_resched();
    }
  }
 }

 spin_lock_irq(&vga_lock);

 vga_wseq(state->vgabase, VGA_SEQ_RESET, 0x01);

 vga_wseq(state->vgabase, VGA_SEQ_PLANE_WRITE, 0x03);

 vga_wseq(state->vgabase, VGA_SEQ_MEMORY_MODE, 0x03);

 if (set)
  vga_wseq(state->vgabase, VGA_SEQ_CHARACTER_MAP, font_select);

 vga_wseq(state->vgabase, VGA_SEQ_RESET, 0x03);


 vga_wgfx(state->vgabase, VGA_GFX_PLANE_READ, 0x00);

 vga_wgfx(state->vgabase, VGA_GFX_MODE, 0x10);

 vga_wgfx(state->vgabase, VGA_GFX_MISC, beg);


 if ((set) && (ch512 != vga_512_chars)) {

  for (i = 0; i < MAX_NR_CONSOLES; i++) {
   struct vc_data *c = vc_cons[i].d;
   if (c && c->vc_sw == &vga_con)
    c->vc_hi_font_mask = ch512 ? 0x0800 : 0;
  }
  vga_512_chars = ch512;


  inb_p(video_port_status);

  vga_wattr(state->vgabase, VGA_ATC_PLANE_ENABLE, ch512 ? 0x07 : 0x0f);


  inb_p(video_port_status);
  vga_wattr(state->vgabase, VGA_AR_ENABLE_DISPLAY, 0);
 }
 spin_unlock_irq(&vga_lock);
 lock_kernel();
 return 0;
}
