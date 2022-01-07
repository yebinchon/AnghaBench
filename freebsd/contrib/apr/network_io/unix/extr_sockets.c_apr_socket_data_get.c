
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; void* data; int key; } ;
typedef TYPE_1__ sock_userdata_t ;
typedef int apr_status_t ;
struct TYPE_5__ {TYPE_1__* userdata; } ;
typedef TYPE_2__ apr_socket_t ;


 int APR_SUCCESS ;
 int strcmp (int ,char const*) ;

apr_status_t apr_socket_data_get(void **data, const char *key, apr_socket_t *sock)
{
    sock_userdata_t *cur = sock->userdata;

    *data = ((void*)0);

    while (cur) {
        if (!strcmp(cur->key, key)) {
            *data = cur->data;
            break;
        }
        cur = cur->next;
    }

    return APR_SUCCESS;
}
