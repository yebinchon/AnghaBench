
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
struct TYPE_5__ {scalar_t__ nidle; scalar_t__ ntotal; int avail; int listlock; } ;
typedef TYPE_1__ apr_reslist_t ;
typedef int apr_res_t ;


 scalar_t__ APR_SUCCESS ;
 int apr_thread_cond_destroy (int ) ;
 int apr_thread_mutex_destroy (int ) ;
 int apr_thread_mutex_lock (int ) ;
 int apr_thread_mutex_unlock (int ) ;
 int assert (int) ;
 scalar_t__ destroy_resource (TYPE_1__*,int *) ;
 int free_container (TYPE_1__*,int *) ;
 int * pop_resource (TYPE_1__*) ;

__attribute__((used)) static apr_status_t reslist_cleanup(void *data_)
{
    apr_status_t rv = APR_SUCCESS;
    apr_reslist_t *rl = data_;
    apr_res_t *res;





    while (rl->nidle > 0) {
        apr_status_t rv1;
        res = pop_resource(rl);
        rl->ntotal--;
        rv1 = destroy_resource(rl, res);
        if (rv1 != APR_SUCCESS) {
            rv = rv1;

        }
        free_container(rl, res);
    }

    assert(rl->nidle == 0);
    assert(rl->ntotal == 0);







    return rv;
}
