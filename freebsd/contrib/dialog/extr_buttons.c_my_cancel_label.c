
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* cancel_label; } ;


 char const* _ (char*) ;
 TYPE_1__ dialog_vars ;

__attribute__((used)) static const char *
my_cancel_label(void)
{
    return (dialog_vars.cancel_label != ((void*)0))
 ? dialog_vars.cancel_label
 : _("Cancel");
}
