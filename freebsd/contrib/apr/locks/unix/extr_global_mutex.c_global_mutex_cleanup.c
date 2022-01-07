
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
struct TYPE_2__ {scalar_t__ thread_mutex; int proc_mutex; } ;
typedef TYPE_1__ apr_global_mutex_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_proc_mutex_destroy (int ) ;
 scalar_t__ apr_thread_mutex_destroy (scalar_t__) ;

__attribute__((used)) static apr_status_t global_mutex_cleanup(void *data)
{
    apr_global_mutex_t *m = (apr_global_mutex_t *)data;
    apr_status_t rv;

    rv = apr_proc_mutex_destroy(m->proc_mutex);
    return rv;
}
