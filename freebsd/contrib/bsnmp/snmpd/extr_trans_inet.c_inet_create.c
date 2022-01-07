
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_port_params {int port; int type; int index; int proto; } ;
struct TYPE_2__ {int index; } ;
struct inet_port {int (* create ) (struct inet_port*,struct inet_port_params*) ;struct inet_port* dns_addr; TYPE_1__ tport; void* deactivate; void* activate; int proto; int socks; } ;






 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NO_CREATION ;
 int TAILQ_INIT (int *) ;
 void* dns_activate ;
 int dns_create (struct inet_port*,struct inet_port_params*) ;
 void* dns_deactivate ;
 int free (struct inet_port*) ;
 void* ipv4_activate ;
 int ipv4_create (struct inet_port*,struct inet_port_params*) ;
 void* ipv4_deactivate ;
 void* ipv6_activate ;
 int ipv6_create (struct inet_port*,struct inet_port_params*) ;
 void* ipv6_deactivate ;
 int ipv6z_create (struct inet_port*,struct inet_port_params*) ;
 struct inet_port* malloc (int) ;
 int memset (struct inet_port*,int ,int) ;
 int my_trans ;
 int stub1 (struct inet_port*,struct inet_port_params*) ;
 int trans_insert_port (int ,TYPE_1__*) ;

__attribute__((used)) static int
inet_create(struct inet_port_params *params, struct inet_port **pp)
{
 int err = SNMP_ERR_NOERROR;
 struct inet_port *port = ((void*)0);

 if (params->port > 0xffff) {
  err = SNMP_ERR_NO_CREATION;
  goto fail;
 }

 if ((port = malloc(sizeof(*port))) == ((void*)0)) {
  err = SNMP_ERR_GENERR;
  goto fail;
 }
 memset(port, 0, sizeof(*port));
 TAILQ_INIT(&port->socks);

 port->proto = params->proto;
 port->tport.index = params->index;

 switch (params->type) {

   case 130:
  port->create = ipv4_create;
  port->activate = ipv4_activate;
  port->deactivate = ipv4_deactivate;
  break;

   case 129:
  port->create = ipv6_create;
  port->activate = ipv6_activate;
  port->deactivate = ipv6_deactivate;
  break;

   case 128:
  port->create = ipv6z_create;
  port->activate = ipv6_activate;
  port->deactivate = ipv6_deactivate;
  break;

   case 131:
  port->create = dns_create;
  port->activate = dns_activate;
  port->deactivate = dns_deactivate;
  break;

   default:
  err = SNMP_ERR_NO_CREATION;
  goto fail;
 }

 if ((err = port->create(port, params)) != SNMP_ERR_NOERROR)
  goto fail;

 *pp = port;
 trans_insert_port(my_trans, &port->tport);
 return (err);

fail:
 free(port->dns_addr);
 free(port);
 return (err);
}
