
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int uint8_t ;
typedef int dtrace_typeinfo_t ;
typedef int dtrace_hdl_t ;
struct TYPE_15__ {char const* pr_name; TYPE_3__** pr_nargv; TYPE_1__* pr_argv; TYPE_3__** pr_xargv; scalar_t__* pr_mapping; scalar_t__ pr_argc; scalar_t__ pr_xargc; scalar_t__ pr_nargc; int * pr_inst; TYPE_3__* pr_xargs; TYPE_3__* pr_nargs; TYPE_5__* pr_ident; int * pr_pvp; } ;
typedef TYPE_2__ dt_probe_t ;
struct TYPE_16__ {struct TYPE_16__* dn_list; int dn_type; int dn_ctfp; int * dn_string; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_17__ {int * dm_name; } ;
typedef TYPE_4__ dt_module_t ;
struct TYPE_18__ {scalar_t__ di_kind; TYPE_2__* di_data; int di_name; } ;
typedef TYPE_5__ dt_ident_t ;
struct TYPE_14__ {int dtt_type; int dtt_ctfp; int * dtt_object; } ;


 scalar_t__ DT_IDENT_PROBE ;
 int assert (int) ;
 void* dt_alloc (int *,int) ;
 TYPE_4__* dt_module_lookup_by_ctf (int *,int ) ;
 scalar_t__ dt_probe_argmap (TYPE_3__*,TYPE_3__*) ;
 int dt_probe_destroy (TYPE_2__*) ;
 char* strrchr (int ,char) ;

dt_probe_t *
dt_probe_create(dtrace_hdl_t *dtp, dt_ident_t *idp, int protoc,
    dt_node_t *nargs, uint_t nargc, dt_node_t *xargs, uint_t xargc)
{
 dt_module_t *dmp;
 dt_probe_t *prp;
 const char *p;
 uint_t i;

 assert(idp->di_kind == DT_IDENT_PROBE);
 assert(idp->di_data == ((void*)0));






 if (protoc < 2) {
  assert(xargs == ((void*)0));
  assert(xargc == 0);
  xargs = nargs;
  xargc = nargc;
 }

 if ((prp = dt_alloc(dtp, sizeof (dt_probe_t))) == ((void*)0))
  return (((void*)0));

 prp->pr_pvp = ((void*)0);
 prp->pr_ident = idp;

 p = strrchr(idp->di_name, ':');
 assert(p != ((void*)0));
 prp->pr_name = p + 1;

 prp->pr_nargs = nargs;
 prp->pr_nargv = dt_alloc(dtp, sizeof (dt_node_t *) * nargc);
 prp->pr_nargc = nargc;
 prp->pr_xargs = xargs;
 prp->pr_xargv = dt_alloc(dtp, sizeof (dt_node_t *) * xargc);
 prp->pr_xargc = xargc;
 prp->pr_mapping = dt_alloc(dtp, sizeof (uint8_t) * xargc);
 prp->pr_inst = ((void*)0);
 prp->pr_argv = dt_alloc(dtp, sizeof (dtrace_typeinfo_t) * xargc);
 prp->pr_argc = xargc;

 if ((prp->pr_nargc != 0 && prp->pr_nargv == ((void*)0)) ||
     (prp->pr_xargc != 0 && prp->pr_xargv == ((void*)0)) ||
     (prp->pr_xargc != 0 && prp->pr_mapping == ((void*)0)) ||
     (prp->pr_argc != 0 && prp->pr_argv == ((void*)0))) {
  dt_probe_destroy(prp);
  return (((void*)0));
 }

 for (i = 0; i < xargc; i++, xargs = xargs->dn_list) {
  if (xargs->dn_string != ((void*)0))
   prp->pr_mapping[i] = dt_probe_argmap(xargs, nargs);
  else
   prp->pr_mapping[i] = i;

  prp->pr_xargv[i] = xargs;

  if ((dmp = dt_module_lookup_by_ctf(dtp,
      xargs->dn_ctfp)) != ((void*)0))
   prp->pr_argv[i].dtt_object = dmp->dm_name;
  else
   prp->pr_argv[i].dtt_object = ((void*)0);

  prp->pr_argv[i].dtt_ctfp = xargs->dn_ctfp;
  prp->pr_argv[i].dtt_type = xargs->dn_type;
 }

 for (i = 0; i < nargc; i++, nargs = nargs->dn_list)
  prp->pr_nargv[i] = nargs;

 idp->di_data = prp;
 return (prp);
}
