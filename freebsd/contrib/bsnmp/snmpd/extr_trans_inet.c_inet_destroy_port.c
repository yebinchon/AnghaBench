
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tport {int dummy; } ;
struct inet_port {struct inet_port* dns_addr; } ;


 int deactivate_port (struct inet_port*) ;
 int free (struct inet_port*) ;
 int trans_remove_port (struct tport*) ;

__attribute__((used)) static void
inet_destroy_port(struct tport *tp)
{
 struct inet_port *port = (struct inet_port *)tp;

 deactivate_port(port);

 trans_remove_port(tp);

 free(port->dns_addr);
 free(port);
}
