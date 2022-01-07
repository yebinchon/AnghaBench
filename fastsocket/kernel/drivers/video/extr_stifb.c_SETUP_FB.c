
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_pixel; } ;
struct TYPE_3__ {TYPE_2__ var; } ;
struct stifb_info {int id; TYPE_1__ info; } ;




 int REG_10 ;
 int REG_14 ;
 int REG_16b1 ;





 int SETUP_HW (struct stifb_info*) ;
 int WRITE_BYTE (int,struct stifb_info*,int ) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
SETUP_FB(struct stifb_info *fb)
{
 unsigned int reg10_value = 0;

 SETUP_HW(fb);
 switch (fb->id)
 {
  case 134:
  case 130:
  case 131:
   reg10_value = 0x13601000;
   break;
  case 132:
   if (fb->info.var.bits_per_pixel == 32)
    reg10_value = 0xBBA0A000;
   else
    reg10_value = 0x13601000;
   break;
  case 129:
   if (fb->info.var.bits_per_pixel == 32)
    reg10_value = 0xBBA0A000;
   else
    reg10_value = 0x13602000;
   break;
  case 128:
  case 133:
   reg10_value = 0x13602000;
   break;
 }
 if (reg10_value)
  WRITE_WORD(reg10_value, fb, REG_10);
 WRITE_WORD(0x83000300, fb, REG_14);
 SETUP_HW(fb);
 WRITE_BYTE(1, fb, REG_16b1);
}
