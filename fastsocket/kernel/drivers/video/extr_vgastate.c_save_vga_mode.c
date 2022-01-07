
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgastate {int num_crtc; int num_attr; int num_gfx; int num_seq; int vgabase; scalar_t__ vidstate; } ;
struct regstate {int misc; int * seq; int * gfx; int * attr; int * crtc; } ;


 int VGA_ATT_W ;
 unsigned short VGA_MIS_R ;
 int vga_r (int ,unsigned short) ;
 int vga_rattr (int ,int) ;
 int vga_rcrtcs (int ,unsigned short,int) ;
 int vga_rgfx (int ,int) ;
 int vga_rseq (int ,int) ;
 int vga_w (int ,int ,int) ;

__attribute__((used)) static void save_vga_mode(struct vgastate *state)
{
 struct regstate *saved = (struct regstate *) state->vidstate;
 unsigned short iobase;
 int i;

 saved->misc = vga_r(state->vgabase, VGA_MIS_R);
 if (saved->misc & 1)
  iobase = 0x3d0;
 else
  iobase = 0x3b0;

 for (i = 0; i < state->num_crtc; i++)
  saved->crtc[i] = vga_rcrtcs(state->vgabase, iobase, i);

 vga_r(state->vgabase, iobase + 0xa);
 vga_w(state->vgabase, VGA_ATT_W, 0x00);
 for (i = 0; i < state->num_attr; i++) {
  vga_r(state->vgabase, iobase + 0xa);
  saved->attr[i] = vga_rattr(state->vgabase, i);
 }
 vga_r(state->vgabase, iobase + 0xa);
 vga_w(state->vgabase, VGA_ATT_W, 0x20);

 for (i = 0; i < state->num_gfx; i++)
  saved->gfx[i] = vga_rgfx(state->vgabase, i);

 for (i = 0; i < state->num_seq; i++)
  saved->seq[i] = vga_rseq(state->vgabase, i);
}
