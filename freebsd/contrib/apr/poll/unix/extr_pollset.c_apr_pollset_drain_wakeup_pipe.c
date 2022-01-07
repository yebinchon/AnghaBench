
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rb ;
typedef int apr_size_t ;
struct TYPE_3__ {int * wakeup_pipe; } ;
typedef TYPE_1__ apr_pollset_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_read (int ,char*,int*) ;

void apr_pollset_drain_wakeup_pipe(apr_pollset_t *pollset)
{
    char rb[512];
    apr_size_t nr = sizeof(rb);

    while (apr_file_read(pollset->wakeup_pipe[0], rb, &nr) == APR_SUCCESS) {





        if (nr != sizeof(rb))
            break;
    }
}
