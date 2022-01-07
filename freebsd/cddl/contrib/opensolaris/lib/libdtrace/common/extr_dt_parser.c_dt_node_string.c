
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_6__ {char* dn_string; int dn_op; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_7__ {int pcb_jmpbuf; int * pcb_hdl; } ;


 int B_FALSE ;
 int DT_NODE_STRING ;
 int DT_STR_CTFP (int *) ;
 int DT_STR_TYPE (int *) ;
 int DT_TOK_STRING ;
 int EDT_NOMEM ;
 TYPE_1__* dt_node_alloc (int ) ;
 int dt_node_type_assign (TYPE_1__*,int ,int ,int ) ;
 int longjmp (int ,int ) ;
 TYPE_2__* yypcb ;

dt_node_t *
dt_node_string(char *string)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_node_t *dnp;

 if (string == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dnp = dt_node_alloc(DT_NODE_STRING);
 dnp->dn_op = DT_TOK_STRING;
 dnp->dn_string = string;
 dt_node_type_assign(dnp, DT_STR_CTFP(dtp), DT_STR_TYPE(dtp), B_FALSE);

 return (dnp);
}
