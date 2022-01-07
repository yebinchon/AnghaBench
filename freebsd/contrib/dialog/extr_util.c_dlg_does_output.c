
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_count; } ;


 TYPE_1__ dialog_state ;

void
dlg_does_output(void)
{
    dialog_state.output_count += 1;
}
