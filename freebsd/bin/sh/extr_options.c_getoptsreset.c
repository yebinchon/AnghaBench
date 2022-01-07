
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;


 TYPE_1__ shellparam ;
 scalar_t__ strcmp (char const*,char*) ;

void
getoptsreset(const char *value)
{
 while (*value == '0')
  value++;
 if (strcmp(value, "1") == 0)
  shellparam.reset = 1;
}
