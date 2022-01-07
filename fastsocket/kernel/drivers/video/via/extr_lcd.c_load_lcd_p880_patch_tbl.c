
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_reg {int dummy; } ;


 int BIT1 ;
 int BIT2 ;
 int BIT3 ;
 int BIT7 ;
 int CR17 ;


 int NUM_TOTAL_P880_LCD_RES_10X7_16X12 ;
 int NUM_TOTAL_P880_LCD_RES_12X10_16X12 ;
 int NUM_TOTAL_P880_LCD_RES_6X4_14X10 ;
 int NUM_TOTAL_P880_LCD_RES_6X4_16X12 ;
 int NUM_TOTAL_P880_LCD_RES_7X4_16X12 ;
 int NUM_TOTAL_P880_LCD_RES_8X6_14X10 ;
 int NUM_TOTAL_P880_LCD_RES_8X6_16X12 ;
 struct io_reg* P880_LCD_RES_10X7_16X12 ;
 struct io_reg* P880_LCD_RES_12X10_16X12 ;
 struct io_reg* P880_LCD_RES_6X4_14X10 ;
 struct io_reg* P880_LCD_RES_6X4_16X12 ;
 struct io_reg* P880_LCD_RES_7X4_16X12 ;
 struct io_reg* P880_LCD_RES_8X6_14X10 ;
 struct io_reg* P880_LCD_RES_8X6_16X12 ;
 int SR40 ;
 int VIACR ;
 int VIARMisc ;
 int VIASR ;
 int VIAWMisc ;
 int inb (int ) ;
 int outb (int,int ) ;
 int viafb_get_mode_index (int,int) ;
 int viafb_write_reg_mask (int ,int ,int,int ) ;
 int viafb_write_regx (struct io_reg*,int) ;

__attribute__((used)) static void load_lcd_p880_patch_tbl(int set_hres, int set_vres,
 int panel_id)
{
 int vmode_index;
 int reg_num = 0;
 struct io_reg *lcd_patch_reg = ((void*)0);

 vmode_index = viafb_get_mode_index(set_hres, set_vres);

 switch (panel_id) {
 case 138:
  switch (vmode_index) {
  case 131:
   reg_num = NUM_TOTAL_P880_LCD_RES_6X4_14X10;
   lcd_patch_reg = P880_LCD_RES_6X4_14X10;
   break;
  case 128:
   reg_num = NUM_TOTAL_P880_LCD_RES_8X6_14X10;
   lcd_patch_reg = P880_LCD_RES_8X6_14X10;
   break;
  }
  break;
 case 137:
  switch (vmode_index) {
  case 132:
  case 131:
   reg_num = NUM_TOTAL_P880_LCD_RES_6X4_16X12;
   lcd_patch_reg = P880_LCD_RES_6X4_16X12;
   break;
  case 130:
  case 129:
   reg_num = NUM_TOTAL_P880_LCD_RES_7X4_16X12;
   lcd_patch_reg = P880_LCD_RES_7X4_16X12;
   break;
  case 128:
   reg_num = NUM_TOTAL_P880_LCD_RES_8X6_16X12;
   lcd_patch_reg = P880_LCD_RES_8X6_16X12;
   break;
  case 136:
   reg_num = NUM_TOTAL_P880_LCD_RES_10X7_16X12;
   lcd_patch_reg = P880_LCD_RES_10X7_16X12;
   break;
  case 134:
  case 133:
  case 135:
   reg_num = NUM_TOTAL_P880_LCD_RES_12X10_16X12;
   lcd_patch_reg = P880_LCD_RES_12X10_16X12;
   break;
  }
  break;

 }
 if (reg_num != 0) {

  viafb_write_reg_mask(CR17, VIACR, 0x00, BIT7);

  viafb_write_regx(lcd_patch_reg, reg_num);


  viafb_write_reg_mask(CR17, VIACR, 0x80, BIT7);


  viafb_write_reg_mask(SR40, VIASR, 0x02, BIT1);
  viafb_write_reg_mask(SR40, VIASR, 0x00, BIT1);


  outb(inb(VIARMisc) | (BIT2 + BIT3), VIAWMisc);
 }
}
