
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stifb_info {int dummy; } ;


 int READ_WORD (struct stifb_info*,int ) ;
 int REG_21 ;
 int REG_27 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
ARTIST_ENABLE_DISABLE_DISPLAY(struct stifb_info *fb, int enable)
{
 u32 DregsMiscVideo = REG_21;
 u32 DregsMiscCtl = REG_27;

 SETUP_HW(fb);
 if (enable) {
   WRITE_WORD(READ_WORD(fb, DregsMiscVideo) | 0x0A000000, fb, DregsMiscVideo);
   WRITE_WORD(READ_WORD(fb, DregsMiscCtl) | 0x00800000, fb, DregsMiscCtl);
 } else {
   WRITE_WORD(READ_WORD(fb, DregsMiscVideo) & ~0x0A000000, fb, DregsMiscVideo);
   WRITE_WORD(READ_WORD(fb, DregsMiscCtl) & ~0x00800000, fb, DregsMiscCtl);
 }
}
