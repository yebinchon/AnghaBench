
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_CONTROL ;
 int MOD_REG_FLD (int ,int,int) ;

__attribute__((used)) static void set_lcd_tft_mode(int enable)
{
 u32 mask;

 mask = 1 << 3;
 MOD_REG_FLD(DISPC_CONTROL, mask, enable ? mask : 0);
}
