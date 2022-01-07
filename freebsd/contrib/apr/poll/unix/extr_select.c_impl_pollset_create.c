
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int apr_uint32_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ apr_pollset_t ;
typedef int apr_pollset_private_t ;
typedef int apr_pollfd_t ;
struct TYPE_4__ {void* result_set; void* query_set; int set_type; scalar_t__ maxfd; int exceptset; int writeset; int readset; } ;


 int APR_EINVAL ;
 int APR_ENOTIMPL ;
 int APR_NO_DESC ;
 int APR_POLLSET_THREADSAFE ;
 int APR_SUCCESS ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 void* apr_palloc (int *,int) ;

__attribute__((used)) static apr_status_t impl_pollset_create(apr_pollset_t *pollset,
                                        apr_uint32_t size,
                                        apr_pool_t *p,
                                        apr_uint32_t flags)
{
    if (flags & APR_POLLSET_THREADSAFE) {
        pollset->p = ((void*)0);
        return APR_ENOTIMPL;
    }






    pollset->p = apr_palloc(p, sizeof(apr_pollset_private_t));
    FD_ZERO(&(pollset->p->readset));
    FD_ZERO(&(pollset->p->writeset));
    FD_ZERO(&(pollset->p->exceptset));
    pollset->p->maxfd = 0;



    pollset->p->query_set = apr_palloc(p, size * sizeof(apr_pollfd_t));
    pollset->p->result_set = apr_palloc(p, size * sizeof(apr_pollfd_t));

    return APR_SUCCESS;
}
