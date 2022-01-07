
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int td_labels; } ;
typedef TYPE_1__ tdata_t ;
typedef int labelent_t ;


 int list_iter (int ,int ,int **) ;
 int tdata_label_top_cb ;

labelent_t *
tdata_label_top(tdata_t *td)
{
 labelent_t *top = ((void*)0);

 (void) list_iter(td->td_labels, tdata_label_top_cb, &top);

 return (top);
}
