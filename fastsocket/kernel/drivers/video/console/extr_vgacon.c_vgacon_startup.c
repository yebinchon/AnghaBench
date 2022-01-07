
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct resource {char* name; int start; int end; } ;
struct TYPE_7__ {char const* (* con_startup ) () ;} ;
struct TYPE_6__ {scalar_t__ orig_video_isVGA; int orig_video_mode; scalar_t__ orig_video_lines; int orig_video_cols; int orig_video_ega_bx; int orig_video_points; } ;
struct TYPE_5__ {int * vgabase; } ;


 int VGA_ATT_W ;
 int VGA_CRT_DC ;
 int VGA_CRT_DM ;
 int VGA_CRT_IC ;
 int VGA_CRT_IM ;
 int VGA_FONTWIDTH ;
 int VGA_GFX_D ;
 int VGA_GFX_I ;
 int VGA_IS1_RC ;
 int VGA_MAP_MEM (int,int) ;
 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 scalar_t__ VIDEO_TYPE_CGA ;
 scalar_t__ VIDEO_TYPE_EFI ;
 scalar_t__ VIDEO_TYPE_EGAC ;
 scalar_t__ VIDEO_TYPE_EGAM ;
 scalar_t__ VIDEO_TYPE_MDA ;
 scalar_t__ VIDEO_TYPE_VGAC ;
 scalar_t__ VIDEO_TYPE_VLFB ;
 int* color_table ;
 TYPE_3__* conswitchp ;
 int* default_blu ;
 int* default_grn ;
 int* default_red ;
 TYPE_3__ dummy_con ;
 int inb_p (int ) ;
 int ioport_resource ;
 int outb_p (int,int ) ;
 int request_resource (int *,struct resource*) ;
 int scr_readw (int volatile*) ;
 int scr_writew (int,int volatile*) ;
 TYPE_2__ screen_info ;
 TYPE_1__ state ;
 char const* stub1 () ;
 int vga_can_do_color ;
 int vga_default_font_height ;
 int vga_hardscroll_enabled ;
 int vga_hardscroll_user_enable ;
 int vga_init_done ;
 int vga_scan_lines ;
 int vga_video_font_height ;
 int vga_video_num_columns ;
 int vga_video_num_lines ;
 int vga_video_port_reg ;
 int vga_video_port_val ;
 scalar_t__ vga_video_type ;
 int vga_vram_base ;
 int vga_vram_end ;
 int vga_vram_size ;
 int vgacon_scrollback_startup () ;
 int vgacon_xres ;
 int vgacon_yres ;

__attribute__((used)) static const char *vgacon_startup(void)
{
 const char *display_desc = ((void*)0);
 u16 saved1, saved2;
 volatile u16 *p;

 if (screen_info.orig_video_isVGA == VIDEO_TYPE_VLFB ||
     screen_info.orig_video_isVGA == VIDEO_TYPE_EFI) {
       no_vga:




  return ((void*)0);

 }


 if ((screen_info.orig_video_mode == 0) &&
     (screen_info.orig_video_lines == 0) &&
     (screen_info.orig_video_cols == 0))
  goto no_vga;


 if ((screen_info.orig_video_mode == 0x0D) ||
     (screen_info.orig_video_mode == 0x0E) ||
     (screen_info.orig_video_mode == 0x10) ||
     (screen_info.orig_video_mode == 0x12) ||
     (screen_info.orig_video_mode == 0x6A))
  goto no_vga;

 vga_video_num_lines = screen_info.orig_video_lines;
 vga_video_num_columns = screen_info.orig_video_cols;
 state.vgabase = ((void*)0);

 if (screen_info.orig_video_mode == 7) {

  vga_vram_base = 0xb0000;
  vga_video_port_reg = VGA_CRT_IM;
  vga_video_port_val = VGA_CRT_DM;
  if ((screen_info.orig_video_ega_bx & 0xff) != 0x10) {
   static struct resource ega_console_resource =
       { .name = "ega", .start = 0x3B0, .end = 0x3BF };
   vga_video_type = VIDEO_TYPE_EGAM;
   vga_vram_size = 0x8000;
   display_desc = "EGA+";
   request_resource(&ioport_resource,
      &ega_console_resource);
  } else {
   static struct resource mda1_console_resource =
       { .name = "mda", .start = 0x3B0, .end = 0x3BB };
   static struct resource mda2_console_resource =
       { .name = "mda", .start = 0x3BF, .end = 0x3BF };
   vga_video_type = VIDEO_TYPE_MDA;
   vga_vram_size = 0x2000;
   display_desc = "*MDA";
   request_resource(&ioport_resource,
      &mda1_console_resource);
   request_resource(&ioport_resource,
      &mda2_console_resource);
   vga_video_font_height = 14;
  }
 } else {

  vga_can_do_color = 1;
  vga_vram_base = 0xb8000;
  vga_video_port_reg = VGA_CRT_IC;
  vga_video_port_val = VGA_CRT_DC;
  if ((screen_info.orig_video_ega_bx & 0xff) != 0x10) {
   int i;

   vga_vram_size = 0x8000;

   if (!screen_info.orig_video_isVGA) {
    static struct resource ega_console_resource
        = { .name = "ega", .start = 0x3C0, .end = 0x3DF };
    vga_video_type = VIDEO_TYPE_EGAC;
    display_desc = "EGA";
    request_resource(&ioport_resource,
       &ega_console_resource);
   } else {
    static struct resource vga_console_resource
        = { .name = "vga+", .start = 0x3C0, .end = 0x3DF };
    vga_video_type = VIDEO_TYPE_VGAC;
    display_desc = "VGA+";
    request_resource(&ioport_resource,
       &vga_console_resource);
    for (i = 0; i < 16; i++) {
     inb_p(VGA_IS1_RC);
     outb_p(i, VGA_ATT_W);
     outb_p(i, VGA_ATT_W);
    }
    outb_p(0x20, VGA_ATT_W);





    for (i = 0; i < 16; i++) {
     outb_p(color_table[i], VGA_PEL_IW);
     outb_p(default_red[i], VGA_PEL_D);
     outb_p(default_grn[i], VGA_PEL_D);
     outb_p(default_blu[i], VGA_PEL_D);
    }
   }
  } else {
   static struct resource cga_console_resource =
       { .name = "cga", .start = 0x3D4, .end = 0x3D5 };
   vga_video_type = VIDEO_TYPE_CGA;
   vga_vram_size = 0x2000;
   display_desc = "*CGA";
   request_resource(&ioport_resource,
      &cga_console_resource);
   vga_video_font_height = 8;
  }
 }

 vga_vram_base = VGA_MAP_MEM(vga_vram_base, vga_vram_size);
 vga_vram_end = vga_vram_base + vga_vram_size;





 p = (volatile u16 *) vga_vram_base;
 saved1 = scr_readw(p);
 saved2 = scr_readw(p + 1);
 scr_writew(0xAA55, p);
 scr_writew(0x55AA, p + 1);
 if (scr_readw(p) != 0xAA55 || scr_readw(p + 1) != 0x55AA) {
  scr_writew(saved1, p);
  scr_writew(saved2, p + 1);
  goto no_vga;
 }
 scr_writew(0x55AA, p);
 scr_writew(0xAA55, p + 1);
 if (scr_readw(p) != 0x55AA || scr_readw(p + 1) != 0xAA55) {
  scr_writew(saved1, p);
  scr_writew(saved2, p + 1);
  goto no_vga;
 }
 scr_writew(saved1, p);
 scr_writew(saved2, p + 1);

 if (vga_video_type == VIDEO_TYPE_EGAC
     || vga_video_type == VIDEO_TYPE_VGAC
     || vga_video_type == VIDEO_TYPE_EGAM) {
  vga_hardscroll_enabled = vga_hardscroll_user_enable;
  vga_default_font_height = screen_info.orig_video_points;
  vga_video_font_height = screen_info.orig_video_points;

  vga_scan_lines =
      vga_video_font_height * vga_video_num_lines;
 }

 vgacon_xres = screen_info.orig_video_cols * VGA_FONTWIDTH;
 vgacon_yres = vga_scan_lines;

 if (!vga_init_done) {
  vgacon_scrollback_startup();
  vga_init_done = 1;
 }

 return display_desc;
}
