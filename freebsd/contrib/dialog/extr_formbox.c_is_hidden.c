
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ DIALOG_FORMITEM ;



__attribute__((used)) static bool
is_hidden(DIALOG_FORMITEM * item)
{
    return ((item->type & 1) != 0);
}
