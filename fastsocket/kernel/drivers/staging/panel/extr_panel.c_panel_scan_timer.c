
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLASH_LIGHT_TEMPO ;
 scalar_t__ INPUT_POLL_TIME ;
 int LCD_FLAG_L ;
 int inputs_stable ;
 scalar_t__ jiffies ;
 scalar_t__ keypad_enabled ;
 scalar_t__ keypad_initialized ;
 scalar_t__ keypressed ;
 int lcd_backlight (int) ;
 scalar_t__ lcd_enabled ;
 int lcd_flags ;
 scalar_t__ lcd_initialized ;
 scalar_t__ light_tempo ;
 int mod_timer (int *,scalar_t__) ;
 int panel_process_inputs () ;
 scalar_t__ phys_curr ;
 scalar_t__ phys_prev ;
 int phys_scan_contacts () ;
 int pprt_lock ;
 int scan_timer ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void panel_scan_timer(void)
{
 if (keypad_enabled && keypad_initialized) {
  if (spin_trylock(&pprt_lock)) {
   phys_scan_contacts();
   spin_unlock(&pprt_lock);
  }

  if (!inputs_stable || phys_curr != phys_prev)
   panel_process_inputs();
 }

 if (lcd_enabled && lcd_initialized) {
  if (keypressed) {
   if (light_tempo == 0 && ((lcd_flags & LCD_FLAG_L) == 0))
    lcd_backlight(1);
   light_tempo = FLASH_LIGHT_TEMPO;
  } else if (light_tempo > 0) {
   light_tempo--;
   if (light_tempo == 0 && ((lcd_flags & LCD_FLAG_L) == 0))
    lcd_backlight(0);
  }
 }

 mod_timer(&scan_timer, jiffies + INPUT_POLL_TIME);
}
