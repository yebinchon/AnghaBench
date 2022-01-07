
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Architecture; int PFB; int PMC; } ;
struct riva_par {TYPE_1__ riva; } ;
typedef TYPE_1__ RIVA_HW_INST ;







 int NV_RD32 (int ,int) ;

unsigned long riva_get_maxdclk(struct riva_par *par)
{
 RIVA_HW_INST *chip = &par->riva;
 unsigned long dclk = 0;

 switch (chip->Architecture) {
 case 132:
  if (NV_RD32(chip->PFB, 0x00000000) & 0x00000020) {
   if (((NV_RD32(chip->PMC, 0x00000000) & 0xF0) == 0x20)
       && ((NV_RD32(chip->PMC,0x00000000)&0x0F) >= 0x02)) {



    dclk = 800000;
   } else {
    dclk = 1000000;
   }
  } else {



   dclk = 1000000;
  }
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  switch ((NV_RD32(chip->PFB, 0x00000000) >> 3) & 0x00000003) {
  case 3:
   dclk = 800000;
   break;
  default:
   dclk = 1000000;
   break;
  }
  break;
 }
 return dclk;
}
