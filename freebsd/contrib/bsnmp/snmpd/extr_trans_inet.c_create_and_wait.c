
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_context {TYPE_1__* scratch; } ;
struct inet_port_params {int dummy; } ;
struct inet_port {int row_status; } ;
struct TYPE_2__ {struct inet_port* ptr1; } ;


 int RowStatus_createAndWait ;
 int SNMP_ERR_NOERROR ;
 int inet_create (struct inet_port_params*,struct inet_port**) ;

__attribute__((used)) static int
create_and_wait(struct snmp_context *ctx, struct inet_port_params *params)
{
 int err;
 struct inet_port *port;

 if ((err = inet_create(params, &port)) != SNMP_ERR_NOERROR)
  return (err);

 port->row_status = RowStatus_createAndWait;
 ctx->scratch->ptr1 = port;

 return (err);
}
