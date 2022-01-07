
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ file_start_file_directive; scalar_t__ file_start_app_off; } ;


 int ASM_APP_OFF ;
 int asm_out_file ;
 int flag_verbose_asm ;
 int fputs (int ,int ) ;
 int main_input_filename ;
 int output_file_directive (int ,int ) ;
 TYPE_1__ targetm ;

void
default_file_start (void)
{
  if (targetm.file_start_app_off && !flag_verbose_asm)
    fputs (ASM_APP_OFF, asm_out_file);

  if (targetm.file_start_file_directive)
    output_file_directive (asm_out_file, main_input_filename);
}
