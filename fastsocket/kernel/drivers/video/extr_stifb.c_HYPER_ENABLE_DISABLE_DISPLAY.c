
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stifb_info {int dummy; } ;


 unsigned int READ_WORD (struct stifb_info*,int ) ;
 int REG_33 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (unsigned int,struct stifb_info*,int ) ;

__attribute__((used)) static void
HYPER_ENABLE_DISABLE_DISPLAY(struct stifb_info *fb, int enable)
{
 u32 DregsHypMiscVideo = REG_33;
 unsigned int value;
 SETUP_HW(fb);
 value = READ_WORD(fb, DregsHypMiscVideo);
 if (enable)
  value |= 0x0A000000;
 else
  value &= ~0x0A000000;
 WRITE_WORD(value, fb, DregsHypMiscVideo);
}
