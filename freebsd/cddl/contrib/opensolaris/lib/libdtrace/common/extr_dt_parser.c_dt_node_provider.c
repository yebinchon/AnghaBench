
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_9__ {char* dn_provname; TYPE_3__* dn_provider; struct TYPE_9__* dn_link; int dn_provred; struct TYPE_9__* dn_probes; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_11__ {TYPE_1__* pv_nodes; int pv_flags; } ;
struct TYPE_10__ {TYPE_1__* pcb_list; int pcb_jmpbuf; int * pcb_hdl; } ;


 int B_TRUE ;
 size_t DTRACE_PROVNAMELEN ;
 int DT_NODE_PROVIDER ;
 int DT_PROVIDER_INTF ;
 int D_PROV_BADNAME ;
 int EDT_NOMEM ;
 int YYS_CLAUSE ;
 int dnerror (TYPE_1__*,int ,char*,...) ;
 TYPE_1__* dt_node_alloc (int ) ;
 TYPE_3__* dt_provider_create (int *,char*) ;
 TYPE_3__* dt_provider_lookup (int *,char*) ;
 scalar_t__ isdigit (char) ;
 int longjmp (int ,int ) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;
 int yybegin (int ) ;
 TYPE_2__* yypcb ;

dt_node_t *
dt_node_provider(char *name, dt_node_t *probes)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_node_t *dnp = dt_node_alloc(DT_NODE_PROVIDER);
 dt_node_t *lnp;
 size_t len;

 dnp->dn_provname = name;
 dnp->dn_probes = probes;

 if (strchr(name, '`') != ((void*)0)) {
  dnerror(dnp, D_PROV_BADNAME, "provider name may not "
      "contain scoping operator: %s\n", name);
 }

 if ((len = strlen(name)) >= DTRACE_PROVNAMELEN) {
  dnerror(dnp, D_PROV_BADNAME, "provider name may not exceed %d "
      "characters: %s\n", DTRACE_PROVNAMELEN - 1, name);
 }

 if (isdigit(name[len - 1])) {
  dnerror(dnp, D_PROV_BADNAME, "provider name may not "
      "end with a digit: %s\n", name);
 }







 if ((dnp->dn_provider = dt_provider_lookup(dtp, name)) != ((void*)0))
  dnp->dn_provred = B_TRUE;
 else if ((dnp->dn_provider = dt_provider_create(dtp, name)) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
 else
  dnp->dn_provider->pv_flags |= DT_PROVIDER_INTF;
 for (lnp = yypcb->pcb_list; lnp->dn_link != ((void*)0); lnp = lnp->dn_link)
  continue;

 lnp->dn_link = dnp->dn_provider->pv_nodes;
 dnp->dn_provider->pv_nodes = yypcb->pcb_list;

 yybegin(YYS_CLAUSE);
 return (dnp);
}
