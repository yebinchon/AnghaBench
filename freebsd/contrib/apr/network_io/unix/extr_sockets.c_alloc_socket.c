
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int remote_addr_unknown; int pollset; TYPE_2__* remote_addr; int * pool; TYPE_2__* local_addr; } ;
typedef TYPE_1__ apr_socket_t ;
struct TYPE_5__ {int * pool; } ;
typedef TYPE_2__ apr_sockaddr_t ;
typedef int apr_pool_t ;


 scalar_t__ apr_pcalloc (int *,int) ;
 int apr_pollset_create (int *,int,int *,int ) ;

__attribute__((used)) static void alloc_socket(apr_socket_t **new, apr_pool_t *p)
{
    *new = (apr_socket_t *)apr_pcalloc(p, sizeof(apr_socket_t));
    (*new)->pool = p;
    (*new)->local_addr = (apr_sockaddr_t *)apr_pcalloc((*new)->pool,
                                                       sizeof(apr_sockaddr_t));
    (*new)->local_addr->pool = p;
    (*new)->remote_addr = (apr_sockaddr_t *)apr_pcalloc((*new)->pool,
                                                        sizeof(apr_sockaddr_t));
    (*new)->remote_addr->pool = p;
    (*new)->remote_addr_unknown = 1;



    (void) apr_pollset_create(&(*new)->pollset, 1, p, 0);

}
