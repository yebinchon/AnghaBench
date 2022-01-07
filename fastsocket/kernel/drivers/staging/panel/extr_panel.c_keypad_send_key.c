
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t KEYPAD_BUFFER ;
 scalar_t__ init_in_progress ;
 int * keypad_buffer ;
 size_t keypad_buflen ;
 scalar_t__ keypad_open_cnt ;
 int keypad_read_wait ;
 int keypad_start ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void keypad_send_key(char *string, int max_len)
{
 if (init_in_progress)
  return;


 if (keypad_open_cnt > 0) {
  while (max_len-- && keypad_buflen < KEYPAD_BUFFER && *string) {
   keypad_buffer[(keypad_start + keypad_buflen++) %
          KEYPAD_BUFFER] = *string++;
  }
  wake_up_interruptible(&keypad_read_wait);
 }
}
