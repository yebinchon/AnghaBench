
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct TYPE_10__ {int index; } ;
struct udp_port {TYPE_3__ tport; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_11__ {int* subs; } ;
struct snmp_value {TYPE_2__ v; TYPE_4__ var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
typedef enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
typedef int asn_subid_t ;
struct TYPE_8__ {int int1; int int2; } ;



 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 int SNMP_ERR_NO_CREATION ;
 int SNMP_ERR_WRONG_VALUE ;





 int TRUTH_GET (int) ;
 int TRUTH_OK (int) ;
 int abort () ;
 int index_append (TYPE_4__*,int,int *) ;
 int index_decode (TYPE_4__*,int,int,int *,int *) ;
 int my_trans ;
 scalar_t__ trans_find_port (int ,TYPE_4__*,int) ;
 scalar_t__ trans_next_port (int ,TYPE_4__*,int) ;
 int udp_close_port (TYPE_3__*) ;
 int udp_open_port (int *,int ,struct udp_port**) ;

int
op_snmp_port(struct snmp_context *ctx, struct snmp_value *value,
    u_int sub, u_int iidx, enum snmp_op op)
{
 asn_subid_t which = value->var.subs[sub-1];
 struct udp_port *p;
 u_int8_t addr[4];
 u_int32_t port;

 switch (op) {

   case 130:
  if ((p = (struct udp_port *)trans_next_port(my_trans,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  index_append(&value->var, sub, &p->tport.index);
  break;

   case 131:
  if ((p = (struct udp_port *)trans_find_port(my_trans,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  break;

   case 128:
  p = (struct udp_port *)trans_find_port(my_trans,
      &value->var, sub);
  ctx->scratch->int1 = (p != ((void*)0));

  if (which != 133)
   abort();
  if (!TRUTH_OK(value->v.integer))
   return (SNMP_ERR_WRONG_VALUE);

  ctx->scratch->int2 = TRUTH_GET(value->v.integer);

  if (ctx->scratch->int2) {

   if (p != ((void*)0))

    return (SNMP_ERR_NOERROR);

   if (index_decode(&value->var, sub, iidx, addr, &port))
    return (SNMP_ERR_NO_CREATION);
   return (udp_open_port(addr, port, &p));

  } else {

  }
  return (SNMP_ERR_NOERROR);

   case 129:
  p = (struct udp_port *)trans_find_port(my_trans,
      &value->var, sub);
  if (ctx->scratch->int1 == 0) {

   if (ctx->scratch->int2 == 1) {

    if (p != ((void*)0))
     udp_close_port(&p->tport);
   }
  }
  return (SNMP_ERR_NOERROR);

   case 132:
  p = (struct udp_port *)trans_find_port(my_trans,
      &value->var, sub);
  if (ctx->scratch->int1 == 1) {

   if (ctx->scratch->int2 == 0) {

    if (p != ((void*)0))
     udp_close_port(&p->tport);
   }
  }
  return (SNMP_ERR_NOERROR);

   default:
  abort();
 }




 switch (which) {

   case 133:
  value->v.integer = 1;
  break;

   default:
  abort();
 }

 return (SNMP_ERR_NOERROR);
}
