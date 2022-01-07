
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ la_case_sensitivity; } ;


 scalar_t__ case_sensitivity ;
 TYPE_1__* current_language ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
show_case_command (char *ignore, int from_tty)
{
   if (case_sensitivity != current_language->la_case_sensitivity)
      printf_unfiltered(
"Warning: the current case sensitivity setting does not match the language.\n");
}
