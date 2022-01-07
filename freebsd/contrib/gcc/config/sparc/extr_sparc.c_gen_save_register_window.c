
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ TARGET_ARCH64 ;
 int gen_save_register_windowdi (int ) ;
 int gen_save_register_windowsi (int ) ;

__attribute__((used)) static rtx
gen_save_register_window (rtx increment)
{
  if (TARGET_ARCH64)
    return gen_save_register_windowdi (increment);
  else
    return gen_save_register_windowsi (increment);
}
