
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; void* data; int key; } ;
typedef TYPE_1__ sock_userdata_t ;
typedef int apr_status_t ;
struct TYPE_6__ {int pool; TYPE_1__* userdata; } ;
typedef TYPE_2__ apr_socket_t ;


 int APR_SUCCESS ;
 TYPE_1__* apr_palloc (int ,int) ;
 int apr_pool_cleanup_register (int ,void*,int (*) (void*),int (*) (void*)) ;
 int apr_pstrdup (int ,char const*) ;

apr_status_t apr_socket_data_set(apr_socket_t *sock, void *data, const char *key,
                                 apr_status_t (*cleanup) (void *))
{
    sock_userdata_t *new = apr_palloc(sock->pool, sizeof(sock_userdata_t));

    new->key = apr_pstrdup(sock->pool, key);
    new->data = data;
    new->next = sock->userdata;
    sock->userdata = new;

    if (cleanup) {
        apr_pool_cleanup_register(sock->pool, data, cleanup, cleanup);
    }

    return APR_SUCCESS;
}
