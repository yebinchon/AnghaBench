
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_context {TYPE_1__* scratch; } ;
struct inet_port_params {int dummy; } ;
struct inet_port {int row_status; int tport; } ;
typedef enum RowStatus { ____Placeholder_RowStatus } RowStatus ;
struct TYPE_2__ {void* int1; } ;
 void* SET_ACTIVATED ;
 void* SET_CREATED ;
 void* SET_DEACTIVATE ;
 void* SET_DESTROY ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_WRONG_VALUE ;
 int abort () ;
 int create_and_go (struct snmp_context*,struct inet_port_params*) ;
 int create_and_wait (struct snmp_context*,struct inet_port_params*) ;
 int inet_activate (int *) ;

__attribute__((used)) static int
inet_port_set(struct snmp_context *ctx, struct inet_port *port,
    struct inet_port_params *params, enum RowStatus nstatus)
{
 switch (nstatus) {

   case 132:
  if (port != ((void*)0))
   return (SNMP_ERR_INCONS_VALUE);
  ctx->scratch->int1 = SET_CREATED;
  return (create_and_go(ctx, params));

   case 131:
  if (port != ((void*)0))
   return (SNMP_ERR_INCONS_VALUE);
  ctx->scratch->int1 = SET_CREATED;
  return (create_and_wait(ctx, params));

   case 133:
  if (port == ((void*)0))
   return (SNMP_ERR_INCONS_VALUE);

  switch (port->row_status) {

    case 128:

   abort();

    case 129:
   ctx->scratch->int1 = SET_ACTIVATED;
   return (inet_activate(&port->tport));

    case 133:
   return (SNMP_ERR_NOERROR);

    case 132:
    case 131:
    case 130:
   abort();
  }
  break;

   case 129:
  if (port == ((void*)0))
   return (SNMP_ERR_INCONS_VALUE);

  switch (port->row_status) {

    case 128:

   abort();

    case 129:
   return (SNMP_ERR_NOERROR);

    case 133:

   ctx->scratch->int1 = SET_DEACTIVATE;
   return (SNMP_ERR_NOERROR);

    case 132:
    case 131:
    case 130:
   abort();
  }
  break;

   case 130:

  ctx->scratch->int1 = SET_DESTROY;
  return (SNMP_ERR_NOERROR);

   case 128:
  return (SNMP_ERR_WRONG_VALUE);
 }
 abort();
}
