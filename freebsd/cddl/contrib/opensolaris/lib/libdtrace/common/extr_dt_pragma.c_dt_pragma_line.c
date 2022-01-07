
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dn_kind; int dn_value; int * dn_string; struct TYPE_4__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_5__ {scalar_t__ pcb_idepth; int * pcb_filetag; } ;


 scalar_t__ DT_NODE_INT ;
 scalar_t__ DT_NODE_STRING ;
 int D_PRAGMA_MALFORM ;
 int free (int *) ;
 scalar_t__ strncmp (int *,char*,int) ;
 int xyerror (int ,char*,char const*) ;
 int yylineno ;
 TYPE_2__* yypcb ;

__attribute__((used)) static void
dt_pragma_line(const char *prname, dt_node_t *dnp)
{
 dt_node_t *fnp = dnp ? dnp->dn_list : ((void*)0);
 dt_node_t *inp = fnp ? fnp->dn_list : ((void*)0);

 if ((dnp == ((void*)0) || dnp->dn_kind != DT_NODE_INT) ||
     (fnp != ((void*)0) && fnp->dn_kind != DT_NODE_STRING) ||
     (inp != ((void*)0) && inp->dn_kind != DT_NODE_INT)) {
  xyerror(D_PRAGMA_MALFORM, "malformed #%s "
      "<line> [ [\"file\"] state ]\n", prname);
 }





 if (fnp != ((void*)0)) {
  if (yypcb->pcb_filetag != ((void*)0))
   free(yypcb->pcb_filetag);
  if (strncmp(fnp->dn_string, "/dev/fd/", 8) != 0) {
   yypcb->pcb_filetag = fnp->dn_string;
   fnp->dn_string = ((void*)0);
  } else
   yypcb->pcb_filetag = ((void*)0);
 }

 if (inp != ((void*)0)) {
  if (inp->dn_value == 1)
   yypcb->pcb_idepth++;
  else if (inp->dn_value == 2 && yypcb->pcb_idepth != 0)
   yypcb->pcb_idepth--;
 }

 yylineno = dnp->dn_value;
}
