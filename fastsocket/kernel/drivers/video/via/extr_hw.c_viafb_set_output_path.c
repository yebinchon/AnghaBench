
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_crt_output_path (int) ;
 int set_dvi_output_path (int,int) ;
 int set_lcd_output_path (int,int) ;

void viafb_set_output_path(int device, int set_iga, int output_interface)
{
 switch (device) {
 case 130:
  set_crt_output_path(set_iga);
  break;
 case 129:
  set_dvi_output_path(set_iga, output_interface);
  break;
 case 128:
  set_lcd_output_path(set_iga, output_interface);
  break;
 }
}
