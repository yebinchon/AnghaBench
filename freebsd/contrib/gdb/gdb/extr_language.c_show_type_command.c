
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ la_type_check; } ;


 TYPE_1__* current_language ;
 int printf_unfiltered (char*) ;
 scalar_t__ type_check ;

__attribute__((used)) static void
show_type_command (char *ignore, int from_tty)
{
  if (type_check != current_language->la_type_check)
    printf_unfiltered (
   "Warning: the current type check setting does not match the language.\n");
}
