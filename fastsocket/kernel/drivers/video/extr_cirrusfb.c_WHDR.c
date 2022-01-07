
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrusfb_info {scalar_t__ btype; } ;


 scalar_t__ BT_PICASSO ;
 unsigned char RGen (struct cirrusfb_info const*,int ) ;
 int VGA_PEL_IW ;
 int VGA_PEL_MSK ;
 int WGen (struct cirrusfb_info const*,int ,int) ;
 scalar_t__ is_laguna (struct cirrusfb_info const*) ;
 int udelay (int) ;

__attribute__((used)) static void WHDR(const struct cirrusfb_info *cinfo, unsigned char val)
{
 unsigned char dummy;

 if (is_laguna(cinfo))
  return;
 if (cinfo->btype == BT_PICASSO) {


  WGen(cinfo, VGA_PEL_MSK, 0x00);
  udelay(200);

  dummy = RGen(cinfo, VGA_PEL_IW);
  udelay(200);
 }


 dummy = RGen(cinfo, VGA_PEL_MSK);
 udelay(200);
 dummy = RGen(cinfo, VGA_PEL_MSK);
 udelay(200);
 dummy = RGen(cinfo, VGA_PEL_MSK);
 udelay(200);
 dummy = RGen(cinfo, VGA_PEL_MSK);
 udelay(200);

 WGen(cinfo, VGA_PEL_MSK, val);
 udelay(200);

 if (cinfo->btype == BT_PICASSO) {

  dummy = RGen(cinfo, VGA_PEL_IW);
  udelay(200);



  WGen(cinfo, VGA_PEL_MSK, 0xff);
  udelay(200);
 }
}
