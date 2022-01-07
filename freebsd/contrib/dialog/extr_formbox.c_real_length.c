
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text_flen; int text_len; } ;
typedef TYPE_1__ DIALOG_FORMITEM ;



__attribute__((used)) static int
real_length(DIALOG_FORMITEM * item)
{
    return (item->text_flen > 0
     ? item->text_flen
     : (item->text_flen < 0
        ? -item->text_flen
        : item->text_len));
}
