
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* dn_string; int dn_op; int dn_value; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_11__ {TYPE_5__* din_root; } ;
typedef TYPE_2__ dt_idnode_t ;
struct TYPE_12__ {int di_flags; TYPE_2__* di_iarg; } ;
typedef TYPE_3__ dt_ident_t ;
struct TYPE_14__ {scalar_t__ dn_kind; int dn_value; } ;
struct TYPE_13__ {int pcb_globals; int pcb_jmpbuf; } ;


 int DT_IDFLG_INLINE ;
 scalar_t__ DT_NODE_IDENT ;
 scalar_t__ DT_NODE_INT ;
 int DT_TOK_AGG ;
 int DT_TOK_IDENT ;
 int DT_TOK_INT ;
 int EDT_NOMEM ;
 TYPE_3__* dt_idstack_lookup (int *,char*) ;
 TYPE_1__* dt_node_alloc (scalar_t__) ;
 int dt_node_type_propagate (TYPE_5__*,TYPE_1__*) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 TYPE_4__* yypcb ;

dt_node_t *
dt_node_ident(char *name)
{
 dt_ident_t *idp;
 dt_node_t *dnp;

 if (name == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);







 if ((idp = dt_idstack_lookup(&yypcb->pcb_globals, name)) != ((void*)0) &&
     (idp->di_flags & DT_IDFLG_INLINE)) {
  dt_idnode_t *inp = idp->di_iarg;

  if (inp->din_root != ((void*)0) &&
      inp->din_root->dn_kind == DT_NODE_INT) {
   free(name);

   dnp = dt_node_alloc(DT_NODE_INT);
   dnp->dn_op = DT_TOK_INT;
   dnp->dn_value = inp->din_root->dn_value;
   dt_node_type_propagate(inp->din_root, dnp);

   return (dnp);
  }
 }

 dnp = dt_node_alloc(DT_NODE_IDENT);
 dnp->dn_op = name[0] == '@' ? DT_TOK_AGG : DT_TOK_IDENT;
 dnp->dn_string = name;

 return (dnp);
}
