
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tport {TYPE_1__* transport; } ;
struct TYPE_2__ {int table; } ;


 int TAILQ_REMOVE (int *,struct tport*,int ) ;
 int link ;

void
trans_remove_port(struct tport *port)
{

 TAILQ_REMOVE(&port->transport->table, port, link);
}
