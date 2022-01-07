
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint_t ;
typedef int dt_provider_t ;
typedef int dt_probe_t ;
struct TYPE_9__ {scalar_t__ dn_kind; TYPE_1__* dn_ident; int dn_provname; scalar_t__ dn_provred; struct TYPE_9__* dn_list; struct TYPE_9__* dn_probes; int * dn_provider; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_8__ {char* di_name; int di_data; } ;


 scalar_t__ DT_NODE_PROBE ;
 int D_PROV_INCOMPAT ;
 int D_PROV_PRDUP ;
 int assert (int) ;
 int dnerror (TYPE_2__*,int ,char*,int ,char const*,...) ;
 int dt_cook_probe (TYPE_2__*,int *) ;
 int dt_node_provider_cmp (int *,TYPE_2__*,int *,int ) ;
 int dt_probe_declare (int *,int ) ;
 int * dt_probe_lookup (int *,char const*) ;

__attribute__((used)) static dt_node_t *
dt_cook_provider(dt_node_t *dnp, uint_t idflags)
{
 dt_provider_t *pvp = dnp->dn_provider;
 dt_node_t *pnp;






 for (pnp = dnp->dn_probes; pnp != ((void*)0); pnp = pnp->dn_list) {
  const char *probename = pnp->dn_ident->di_name;
  dt_probe_t *prp = dt_probe_lookup(pvp, probename);

  assert(pnp->dn_kind == DT_NODE_PROBE);

  if (prp != ((void*)0) && dnp->dn_provred) {
   dt_node_provider_cmp(pvp, pnp,
       prp, pnp->dn_ident->di_data);
  } else if (prp == ((void*)0) && dnp->dn_provred) {
   dnerror(pnp, D_PROV_INCOMPAT,
       "provider interface mismatch: %s\n"
       "\t current: probe %s:%s defined\n"
       "\tprevious: probe %s:%s not defined\n",
       dnp->dn_provname, dnp->dn_provname,
       probename, dnp->dn_provname, probename);
  } else if (prp != ((void*)0)) {
   dnerror(pnp, D_PROV_PRDUP, "probe redeclared: %s:%s\n",
       dnp->dn_provname, probename);
  } else
   dt_probe_declare(pvp, pnp->dn_ident->di_data);

  dt_cook_probe(pnp, pvp);
 }

 return (dnp);
}
