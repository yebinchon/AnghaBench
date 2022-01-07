
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_dependency {int dummy; } ;
struct snmp_context {int code; } ;
struct lsock_dep {int set; int path; TYPE_1__* port; int status; int type; int pathlen; } ;
typedef enum snmp_depop { ____Placeholder_snmp_depop } snmp_depop ;
struct TYPE_2__ {int tport; } ;


 int LD_CREATE ;
 int LD_DELETE ;
 int LD_STATUS ;



 int SNMP_ERR_BADVALUE ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_READONLY ;
 int SNMP_RET_OK ;
 int abort () ;
 int free (int ) ;
 int lsock_close_port (int *) ;
 int lsock_open_port (int ,int ,TYPE_1__**,int ) ;

__attribute__((used)) static int
lsock_func(struct snmp_context *ctx, struct snmp_dependency *dep,
    enum snmp_depop op)
{
 struct lsock_dep *ld = (struct lsock_dep *)(void *)dep;
 int err = SNMP_ERR_NOERROR;

 switch (op) {

   case 130:
  if (!(ld->set & LD_STATUS))
   err = SNMP_ERR_BADVALUE;
  else if (ld->port == ((void*)0)) {
   if (!ld->status)
    err = SNMP_ERR_BADVALUE;

   else {

    err = lsock_open_port(ld->path, ld->pathlen,
        &ld->port, ld->type);
    if (err == SNMP_ERR_NOERROR)
     ld->set |= LD_CREATE;
   }
  } else if (!ld->status) {

   ld->set |= LD_DELETE;
  } else

   err = SNMP_ERR_READONLY;

  return (err);

   case 128:
  if (ld->set & LD_CREATE) {

   lsock_close_port(&ld->port->tport);
  }
  return (SNMP_ERR_NOERROR);

   case 129:
  if ((ld->set & LD_DELETE) && ctx->code == SNMP_RET_OK)
   lsock_close_port(&ld->port->tport);
  free(ld->path);
  return (SNMP_ERR_NOERROR);
 }
 abort();
}
