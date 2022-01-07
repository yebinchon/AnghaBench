
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_2__ {int socketdes; } ;
typedef TYPE_1__ apr_socket_t ;


 int APR_SUCCESS ;
 scalar_t__ close (int) ;
 int errno ;

__attribute__((used)) static apr_status_t socket_cleanup(void *sock)
{
    apr_socket_t *thesocket = sock;
    int sd = thesocket->socketdes;




    thesocket->socketdes = -1;

    if (close(sd) == 0) {
        return APR_SUCCESS;
    }
    else {

        thesocket->socketdes = sd;

        return errno;
    }
}
