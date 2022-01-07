
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_MAX ;
 int acquire_console_sem () ;
 int fbcon_takeover (int ) ;
 int info_idx ;
 scalar_t__ num_registered_fb ;
 int ** registered_fb ;
 int release_console_sem () ;

__attribute__((used)) static void fbcon_start(void)
{
 if (num_registered_fb) {
  int i;

  acquire_console_sem();

  for (i = 0; i < FB_MAX; i++) {
   if (registered_fb[i] != ((void*)0)) {
    info_idx = i;
    break;
   }
  }

  release_console_sem();
  fbcon_takeover(0);
 }
}
