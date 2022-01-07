
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int flag_apple_kext ;
 scalar_t__ flag_exceptions ;
 scalar_t__ flag_mkernel ;
 int flag_no_common ;
 scalar_t__ flag_non_call_exceptions ;
 TYPE_1__ lang_hooks ;
 scalar_t__ strcmp (int ,char*) ;
 int warning (int ,char*) ;

void
darwin_override_options (void)
{
  if (flag_apple_kext && strcmp (lang_hooks.name, "GNU C++") != 0)
    {
      warning (0, "command line option %<-fapple-kext%> is only valid for C++");
      flag_apple_kext = 0;
    }
  if (flag_mkernel || flag_apple_kext)
    {

      if (strcmp (lang_hooks.name, "GNU C++") == 0)
 flag_apple_kext = 1;

      flag_no_common = 1;


      flag_exceptions = 0;

      flag_non_call_exceptions = 0;
    }
}
