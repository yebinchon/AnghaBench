
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;


 int APR_ENOTIMPL ;
 int APR_SUCCESS ;
 int SIOCATMARK ;
 int apr_get_netos_error () ;
 scalar_t__ ioctl (int ,int ,void*) ;

apr_status_t apr_socket_atmark(apr_socket_t *sock, int *atmark)
{

    int oobmark;

    if (ioctl(sock->socketdes, SIOCATMARK, (void*) &oobmark) < 0)
        return apr_get_netos_error();

    *atmark = (oobmark != 0);

    return APR_SUCCESS;



}
