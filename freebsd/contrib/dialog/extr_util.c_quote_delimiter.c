
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ single_quoted; } ;


 TYPE_1__ dialog_vars ;

__attribute__((used)) static const char *
quote_delimiter(void)
{
    return dialog_vars.single_quoted ? "'" : "\"";
}
