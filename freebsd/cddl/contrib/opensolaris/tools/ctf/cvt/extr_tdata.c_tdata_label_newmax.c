
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int td_labels; } ;
typedef TYPE_1__ tdata_t ;


 int list_iter (int ,int ,int*) ;
 int tdata_label_newmax_cb ;

void
tdata_label_newmax(tdata_t *td, int newmax)
{
 (void) list_iter(td->td_labels, tdata_label_newmax_cb, &newmax);
}
