
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
struct TYPE_2__ {int opt; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;
 int kfree_ip_options (int ) ;

__attribute__((used)) static void tcp_v4_reqsk_destructor(struct request_sock *req)
{
 kfree_ip_options(inet_rsk(req)->opt);
}
