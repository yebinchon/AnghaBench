
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int output; } ;
struct TYPE_3__ {scalar_t__ print_siz; } ;


 int DLG_TRACE (char*) ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int fprintf (int ,char*,int,int) ;

void
dlg_print_size(int height, int width)
{
    if (dialog_vars.print_siz) {
 fprintf(dialog_state.output, "Size: %d, %d\n", height, width);
 DLG_TRACE(("# print size: %dx%d\n", height, width));
    }
}
