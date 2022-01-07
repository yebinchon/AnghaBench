
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_16__ {int timeout; int local_port_unknown; int local_interface_unknown; int connected; int remote_addr_unknown; int pool; scalar_t__ inherit; TYPE_4__* remote_addr; TYPE_2__* local_addr; int socketdes; } ;
typedef TYPE_5__ apr_socket_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {scalar_t__ remote; scalar_t__ local; int * os_sock; int protocol; int type; int family; } ;
typedef TYPE_6__ apr_os_sock_info_t ;
struct TYPE_18__ {int sin_port; } ;
struct TYPE_14__ {TYPE_8__ sin; } ;
struct TYPE_15__ {TYPE_3__ sa; void* port; int salen; } ;
struct TYPE_12__ {TYPE_8__ sin; } ;
struct TYPE_13__ {TYPE_1__ sa; void* port; int salen; } ;


 int APR_SUCCESS ;
 int alloc_socket (TYPE_5__**,int *) ;
 int apr_pool_cleanup_register (int ,void*,int ,int ) ;
 int memcpy (TYPE_8__*,scalar_t__,int ) ;
 void* ntohs (int ) ;
 int set_socket_vars (TYPE_5__*,int ,int ,int ) ;
 int socket_cleanup ;

apr_status_t apr_os_sock_make(apr_socket_t **apr_sock,
                              apr_os_sock_info_t *os_sock_info,
                              apr_pool_t *cont)
{
    alloc_socket(apr_sock, cont);
    set_socket_vars(*apr_sock, os_sock_info->family, os_sock_info->type, os_sock_info->protocol);
    (*apr_sock)->timeout = -1;
    (*apr_sock)->socketdes = *os_sock_info->os_sock;
    if (os_sock_info->local) {
        memcpy(&(*apr_sock)->local_addr->sa.sin,
               os_sock_info->local,
               (*apr_sock)->local_addr->salen);

        (*apr_sock)->local_addr->port = ntohs((*apr_sock)->local_addr->sa.sin.sin_port);
    }
    else {
        (*apr_sock)->local_port_unknown = (*apr_sock)->local_interface_unknown = 1;
    }
    if (os_sock_info->remote) {

        (*apr_sock)->connected = 1;

        memcpy(&(*apr_sock)->remote_addr->sa.sin,
               os_sock_info->remote,
               (*apr_sock)->remote_addr->salen);

        (*apr_sock)->remote_addr->port = ntohs((*apr_sock)->remote_addr->sa.sin.sin_port);
    }
    else {
        (*apr_sock)->remote_addr_unknown = 1;
    }

    (*apr_sock)->inherit = 0;
    apr_pool_cleanup_register((*apr_sock)->pool, (void *)(*apr_sock),
                              socket_cleanup, socket_cleanup);
    return APR_SUCCESS;
}
