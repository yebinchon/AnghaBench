
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ apr_socket_t ;


 int APR_SUCCESS ;

apr_status_t apr_socket_type_get(apr_socket_t *sock, int *type)
{
    *type = sock->type;
    return APR_SUCCESS;
}
