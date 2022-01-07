
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_5__ {int timeout; int local_port_unknown; int local_interface_unknown; int remote_addr_unknown; int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
typedef int apr_pool_t ;
typedef int apr_os_sock_t ;


 int APR_INET ;
 int APR_SUCCESS ;
 int SOCK_STREAM ;
 int alloc_socket (TYPE_1__**,int *) ;
 int set_socket_vars (TYPE_1__*,int ,int ,int ) ;

apr_status_t apr_os_sock_put(apr_socket_t **sock, apr_os_sock_t *thesock,
                           apr_pool_t *cont)
{

    if ((*sock) == ((void*)0)) {
        alloc_socket(sock, cont);



        set_socket_vars(*sock, APR_INET, SOCK_STREAM, 0);
        (*sock)->timeout = -1;
    }
    (*sock)->local_port_unknown = (*sock)->local_interface_unknown = 1;
    (*sock)->remote_addr_unknown = 1;
    (*sock)->socketdes = *thesock;
    return APR_SUCCESS;
}
