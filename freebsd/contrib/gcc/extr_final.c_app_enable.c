
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_APP_ON ;
 int app_on ;
 int asm_out_file ;
 int fputs (int ,int ) ;

void
app_enable (void)
{
  if (! app_on)
    {
      fputs (ASM_APP_ON, asm_out_file);
      app_on = 1;
    }
}
