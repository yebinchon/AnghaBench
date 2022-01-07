
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_5__ {int flags; int ** wakeup_pipe; TYPE_1__* provider; } ;
typedef TYPE_2__ apr_pollset_t ;
struct TYPE_4__ {int (* cleanup ) (TYPE_2__*) ;} ;


 int APR_POLLSET_WAKEABLE ;
 int APR_SUCCESS ;
 int apr_file_close (int *) ;
 int apr_file_socket_pipe_close (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static apr_status_t pollset_cleanup(void *p)
{
    apr_pollset_t *pollset = (apr_pollset_t *) p;
    if (pollset->provider->cleanup) {
        (*pollset->provider->cleanup)(pollset);
    }
    if (pollset->flags & APR_POLLSET_WAKEABLE) {

        if (pollset->wakeup_pipe[0]) {



            apr_file_socket_pipe_close(pollset->wakeup_pipe[0]);

            pollset->wakeup_pipe[0] = ((void*)0);
        }
        if (pollset->wakeup_pipe[1]) {



            apr_file_socket_pipe_close(pollset->wakeup_pipe[1]);

            pollset->wakeup_pipe[1] = ((void*)0);
        }
    }

    return APR_SUCCESS;
}
