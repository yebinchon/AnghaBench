
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LCD_WINCTRL1_FRM ;
__attribute__((used)) static int winbpp (unsigned int winctrl1)
{
 int bits = 0;


 switch (winctrl1 & LCD_WINCTRL1_FRM) {
 case 133:
  bits = 1;
  break;
 case 131:
  bits = 2;
  break;
 case 129:
  bits = 4;
  break;
 case 128:
  bits = 8;
  break;
 case 141:
 case 138:
 case 139:
 case 140:
 case 135:
 case 134:
 case 137:
 case 136:
  bits = 16;
  break;
 case 132:
 case 130:
  bits = 32;
  break;
 }

 return bits;
}
