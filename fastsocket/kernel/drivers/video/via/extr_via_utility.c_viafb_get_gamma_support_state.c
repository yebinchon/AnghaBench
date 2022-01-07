
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CRT_Device ;
 unsigned int DVI_Device ;
 unsigned int LCD_Device ;
 unsigned int None_Device ;

void viafb_get_gamma_support_state(int bpp, unsigned int *support_state)
{
 if (bpp == 8)
  *support_state = None_Device;
 else
  *support_state = CRT_Device | DVI_Device | LCD_Device;
}
