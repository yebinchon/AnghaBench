
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int td_mergelock; struct TYPE_5__* td_parname; struct TYPE_5__* td_parlabel; int td_fwdlist; int td_idhash; int td_layouthash; int td_iihash; } ;
typedef TYPE_1__ tdata_t ;


 int free (TYPE_1__*) ;
 int hash_free (int ,int *,int *) ;
 int * iidesc_free ;
 int list_free (int ,int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int tdata_label_free (TYPE_1__*) ;
 int * tdesc_free_cb ;

void
tdata_free(tdata_t *td)
{
 hash_free(td->td_iihash, iidesc_free, ((void*)0));
 hash_free(td->td_layouthash, tdesc_free_cb, ((void*)0));
 hash_free(td->td_idhash, ((void*)0), ((void*)0));
 list_free(td->td_fwdlist, ((void*)0), ((void*)0));

 tdata_label_free(td);

 free(td->td_parlabel);
 free(td->td_parname);

 pthread_mutex_destroy(&td->td_mergelock);

 free(td);
}
