
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ var; } ;
struct fb_cmap {int len; int* red; int* green; int* blue; int* transp; } ;
struct TYPE_6__ {TYPE_2__* chip_info; } ;
struct TYPE_5__ {scalar_t__ gfx_chip_name; } ;


 int BIT5 ;
 int BIT7 ;
 int CR6A ;
 int SR15 ;
 scalar_t__ UNICHROME_CLE266 ;
 int VIACR ;
 int VIASR ;
 int inb (int) ;
 int inl (unsigned long) ;
 int outb (int,int) ;
 int outl (int,unsigned long) ;
 int viafb_write_reg_mask (int ,int ,int ,int ) ;
 TYPE_3__* viaparinfo ;

__attribute__((used)) static int viafb_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
 u32 len = cmap->len;
 u32 i;
 u16 *pred = cmap->red;
 u16 *pgreen = cmap->green;
 u16 *pblue = cmap->blue;
 u16 *ptransp = cmap->transp;
 u8 sr1a, sr1b, cr67, cr6a, rev = 0, shift = 10;
 if (len > 256)
  return 1;
 if (UNICHROME_CLE266 == viaparinfo->chip_info->gfx_chip_name) {




  outl(0x80000000 | (0xf6 & ~3), (unsigned long)0xCF8);
  rev = (inl((unsigned long)0xCFC) >> ((0xf6 & 3) * 8)) & 0xff;
 }
 switch (info->var.bits_per_pixel) {
 case 8:
  outb(0x1A, 0x3C4);
  sr1a = inb(0x3C5);
  outb(0x1B, 0x3C4);
  sr1b = inb(0x3C5);
  outb(0x67, 0x3D4);
  cr67 = inb(0x3D5);
  outb(0x6A, 0x3D4);
  cr6a = inb(0x3D5);

  outb(0x1A, 0x3C4);
  outb(sr1a | 0x01, 0x3C5);
  outb(0x1B, 0x3C4);

  outb(sr1b | 0x80, 0x3C5);
  outb(0x67, 0x3D4);

  outb(cr67 & 0x3F, 0x3D5);
  outb(0x6A, 0x3D4);

  outb(cr6a & 0xBF, 0x3D5);

  outb(cr6a | 0x80, 0x3D5);

  outb(cr6a | 0xC0, 0x3D5);


  outb(0xFF, 0x3c6);
  outb(0x00, 0x3C8);
  if (UNICHROME_CLE266 == viaparinfo->chip_info->gfx_chip_name &&
   rev >= 15) {
   shift = 8;
   viafb_write_reg_mask(CR6A, VIACR, BIT5, BIT5);
   viafb_write_reg_mask(SR15, VIASR, BIT7, BIT7);
  } else {
   shift = 10;
   viafb_write_reg_mask(CR6A, VIACR, 0, BIT5);
   viafb_write_reg_mask(SR15, VIASR, 0, BIT7);
  }
  for (i = 0; i < len; i++) {
   outb((*(pred + i)) >> shift, 0x3C9);
   outb((*(pgreen + i)) >> shift, 0x3C9);
   outb((*(pblue + i)) >> shift, 0x3C9);
  }

  outb(0x1A, 0x3C4);

  outb(sr1a & 0xFE, 0x3C5);

  outb(0xFF, 0x3c6);
  outb(0x00, 0x3C8);
  for (i = 0; i < len; i++) {
   outb((*(pred + i)) >> shift, 0x3C9);
   outb((*(pgreen + i)) >> shift, 0x3C9);
   outb((*(pblue + i)) >> shift, 0x3C9);
  }

  outb(0x1A, 0x3C4);
  outb(sr1a, 0x3C5);
  outb(0x1B, 0x3C4);
  outb(sr1b, 0x3C5);
  outb(0x67, 0x3D4);
  outb(cr67, 0x3D5);
  outb(0x6A, 0x3D4);
  outb(cr6a, 0x3D5);
  break;
 case 16:
  if (len > 17)
   return 0;
  for (i = 0; i < len; i++)
   ((u32 *) info->pseudo_palette)[i] =
       (*(pred + i) & 0xF800) |
       ((*(pgreen + i) & 0xFC00) >> 5) |
       ((*(pblue + i) & 0xF800) >> 11);
  break;
 case 32:
  if (len > 17)
   return 0;
  if (ptransp) {
   for (i = 0; i < len; i++)
    ((u32 *) info->pseudo_palette)[i] =
        ((*(ptransp + i) & 0xFF00) << 16) |
        ((*(pred + i) & 0xFF00) << 8) |
        ((*(pgreen + i) & 0xFF00)) |
        ((*(pblue + i) & 0xFF00) >> 8);
  } else {
   for (i = 0; i < len; i++)
    ((u32 *) info->pseudo_palette)[i] =
        0x00000000 |
        ((*(pred + i) & 0xFF00) << 8) |
        ((*(pgreen + i) & 0xFF00)) |
        ((*(pblue + i) & 0xFF00) >> 8);
  }
  break;
 }
 return 0;
}
