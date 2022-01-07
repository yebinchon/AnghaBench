
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_9__ {int integer; } ;
struct TYPE_10__ {int* subs; int len; } ;
struct snmp_value {TYPE_2__ v; TYPE_3__ var; } ;
struct snmp_context {int dummy; } ;
struct TYPE_8__ {int index; } ;
struct lsock_port {int type; TYPE_1__ tport; } ;
struct lsock_dep {size_t pathlen; int set; int type; int status; struct lsock_port* port; int * path; } ;
struct asn_oid {int dummy; } ;
typedef enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
typedef int asn_subid_t ;


 int LD_STATUS ;
 int LD_TYPE ;


 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 int SNMP_ERR_NO_CREATION ;
 int SNMP_ERR_WRONG_VALUE ;





 int TRUTH_GET (int) ;
 int TRUTH_OK (int) ;
 int abort () ;
 int asn_slice_oid (struct asn_oid*,TYPE_3__*,int,int ) ;
 int free (int *) ;
 int index_append (TYPE_3__*,int,int *) ;
 int index_decode (TYPE_3__*,int,int,int **,size_t*) ;
 int lsock_func ;
 int my_trans ;
 int oid_begemotSnmpdLocalPortTable ;
 scalar_t__ snmp_dep_lookup (struct snmp_context*,int *,struct asn_oid*,int,int ) ;
 scalar_t__ trans_find_port (int ,TYPE_3__*,int) ;
 scalar_t__ trans_next_port (int ,TYPE_3__*,int) ;

int
op_lsock_port(struct snmp_context *ctx, struct snmp_value *value,
    u_int sub, u_int iidx, enum snmp_op op)
{
 asn_subid_t which = value->var.subs[sub-1];
 struct lsock_port *p;
 u_char *name;
 size_t namelen;
 struct lsock_dep *ld;
 struct asn_oid didx;

 switch (op) {

   case 130:
  if ((p = (struct lsock_port *)trans_next_port(my_trans,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  index_append(&value->var, sub, &p->tport.index);
  break;

   case 131:
  if ((p = (struct lsock_port *)trans_find_port(my_trans,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  break;

   case 128:
  p = (struct lsock_port *)trans_find_port(my_trans,
      &value->var, sub);

  if (index_decode(&value->var, sub, iidx, &name, &namelen))
   return (SNMP_ERR_NO_CREATION);

  asn_slice_oid(&didx, &value->var, sub, value->var.len);
  if ((ld = (struct lsock_dep *)(void *)snmp_dep_lookup(ctx,
      &oid_begemotSnmpdLocalPortTable, &didx, sizeof(*ld),
      lsock_func)) == ((void*)0)) {
   free(name);
   return (SNMP_ERR_GENERR);
  }

  if (ld->path == ((void*)0)) {
   ld->path = name;
   ld->pathlen = namelen;
  } else {
   free(name);
  }
  ld->port = p;

  switch (which) {

    case 134:
   if (ld->set & LD_STATUS)
    return (SNMP_ERR_INCONS_VALUE);
   if (!TRUTH_OK(value->v.integer))
    return (SNMP_ERR_WRONG_VALUE);

   ld->status = TRUTH_GET(value->v.integer);
   ld->set |= LD_STATUS;
   break;

    case 133:
   if (ld->set & LD_TYPE)
    return (SNMP_ERR_INCONS_VALUE);
   if (value->v.integer < 1 || value->v.integer > 4)
    return (SNMP_ERR_WRONG_VALUE);

   ld->type = value->v.integer;
   ld->set |= LD_TYPE;
   break;
  }
  return (SNMP_ERR_NOERROR);

   case 129:
   case 132:
  return (SNMP_ERR_NOERROR);

   default:
  abort();
 }




 switch (which) {

   case 134:
  value->v.integer = 1;
  break;

   case 133:
  value->v.integer = p->type;
  break;

   default:
  abort();
 }

 return (SNMP_ERR_NOERROR);
}
