
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;
typedef int apr_shutdown_how_e ;


 int APR_SUCCESS ;
 int errno ;
 int shutdown (int ,int ) ;

apr_status_t apr_socket_shutdown(apr_socket_t *thesocket,
                                 apr_shutdown_how_e how)
{
    return (shutdown(thesocket->socketdes, how) == -1) ? errno : APR_SUCCESS;
}
