
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vgen; void* private; int * postops; int * preops; int * firstops; } ;
typedef TYPE_1__ tdtrav_data_t ;
typedef int tdtrav_cb_f ;


 int * tdnops ;

void
tdtrav_init(tdtrav_data_t *tdtd, int *vgenp, tdtrav_cb_f *firstops,
    tdtrav_cb_f *preops, tdtrav_cb_f *postops, void *private)
{
 tdtd->vgen = ++(*vgenp);
 tdtd->firstops = firstops ? firstops : tdnops;
 tdtd->preops = preops ? preops : tdnops;
 tdtd->postops = postops ? postops : tdnops;
 tdtd->private = private;
}
