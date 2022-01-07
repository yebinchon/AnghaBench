
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_2__ {int la_language; } ;


 TYPE_1__* current_language ;
 int get_frame_language () ;
 int lang_frame_mismatch_warn ;
 scalar_t__ language_mode ;
 scalar_t__ language_mode_manual ;
 int language_unknown ;
 int printf_filtered (char*,int ) ;

__attribute__((used)) static void
show_language_command (char *ignore, int from_tty)
{
  enum language flang;

  flang = get_frame_language ();
  if (flang != language_unknown &&
      language_mode == language_mode_manual &&
      current_language->la_language != flang)
    printf_filtered ("%s\n", lang_frame_mismatch_warn);
}
