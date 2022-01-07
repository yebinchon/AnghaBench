
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_5__ {int socketdes; int timeout; int pool; scalar_t__ inherit; } ;
typedef TYPE_1__ apr_socket_t ;
typedef int apr_pool_t ;


 int APR_INET ;
 int APR_INET6 ;



 int APR_SUCCESS ;
 int APR_UNSPEC ;
 int EPROTONOSUPPORT ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SOCK_CLOEXEC ;
 int alloc_socket (TYPE_1__**,int *) ;
 int apr_pool_cleanup_register (int ,void*,int ,int ) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,...) ;
 int set_socket_vars (TYPE_1__*,int,int,int) ;
 void* socket (int,int,int) ;
 int socket_cleanup ;

apr_status_t apr_socket_create(apr_socket_t **new, int ofamily, int type,
                               int protocol, apr_pool_t *cont)
{
    int family = ofamily, flags = 0;





    if (family == APR_UNSPEC) {



        family = APR_INET;

    }

    alloc_socket(new, cont);


    (*new)->socketdes = socket(family, type|flags, protocol);
    if ((*new)->socketdes < 0) {
        return errno;
    }
    set_socket_vars(*new, family, type, protocol);


    {
        int flags;
        apr_status_t rv;

        if ((flags = fcntl((*new)->socketdes, F_GETFD)) == -1) {
            rv = errno;
            close((*new)->socketdes);
            (*new)->socketdes = -1;
            return rv;
        }

        flags |= FD_CLOEXEC;
        if (fcntl((*new)->socketdes, F_SETFD, flags) == -1) {
            rv = errno;
            close((*new)->socketdes);
            (*new)->socketdes = -1;
            return rv;
        }
    }


    (*new)->timeout = -1;
    (*new)->inherit = 0;
    apr_pool_cleanup_register((*new)->pool, (void *)(*new), socket_cleanup,
                              socket_cleanup);

    return APR_SUCCESS;
}
