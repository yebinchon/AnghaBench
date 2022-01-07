
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int lib ;
struct TYPE_19__ {char* dt_filetag; int dt_lib_dep_sorted; int dt_lib_dep; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_20__ {scalar_t__ dn_kind; char* dn_string; struct TYPE_20__* dn_list; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_module_t ;
struct TYPE_21__ {int dtld_loaded; int dtld_dependencies; } ;
typedef TYPE_3__ dt_lib_depend_t ;
struct TYPE_22__ {int * dkm_module; } ;
typedef TYPE_4__ dt_kmodule_t ;
struct TYPE_23__ {int pcb_cflags; TYPE_1__* pcb_hdl; } ;


 int B_FALSE ;
 int B_TRUE ;
 int DTRACE_C_CTL ;
 scalar_t__ DT_NODE_IDENT ;
 int D_PRAGMA_DEPEND ;
 int D_PRAGMA_INVAL ;
 int D_PRAGMA_MALFORM ;
 int MAXPATHLEN ;
 int assert (int ) ;
 char* dt_alloc (TYPE_1__*,size_t) ;
 int dt_free (TYPE_1__*,char*) ;
 TYPE_4__* dt_kmodule_lookup (TYPE_1__*,char*) ;
 scalar_t__ dt_lib_depend_add (TYPE_1__*,int *,char*) ;
 TYPE_3__* dt_lib_depend_lookup (int *,char*) ;
 int * dt_module_getctf (TYPE_1__*,int *) ;
 int * dt_module_lookup_by_name (TYPE_1__*,char*) ;
 int dt_pragma_depends_finddep (TYPE_1__*,char*,char*,int) ;
 int * dt_provider_lookup (TYPE_1__*,char*) ;
 char const* dtrace_errmsg (TYPE_1__*,int ) ;
 int dtrace_errno (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;
 int xyerror (int ,char*,...) ;
 TYPE_5__* yypcb ;

__attribute__((used)) static void
dt_pragma_depends(const char *prname, dt_node_t *cnp)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_node_t *nnp = cnp ? cnp->dn_list : ((void*)0);
 int found;
 dt_lib_depend_t *dld;
 char lib[MAXPATHLEN];
 size_t plen;
 char *provs, *cpy, *tok;

 if (cnp == ((void*)0) || nnp == ((void*)0) ||
     cnp->dn_kind != DT_NODE_IDENT || nnp->dn_kind != DT_NODE_IDENT) {
  xyerror(D_PRAGMA_MALFORM, "malformed #pragma %s "
      "<class> <name>\n", prname);
 }

 if (strcmp(cnp->dn_string, "provider") == 0) {





  provs = ((void*)0);
  if (sysctlbyname("debug.dtrace.providers", ((void*)0), &plen, ((void*)0), 0) ||
      ((provs = dt_alloc(dtp, plen)) == ((void*)0)) ||
      sysctlbyname("debug.dtrace.providers", provs, &plen, ((void*)0), 0))
   found = dt_provider_lookup(dtp, nnp->dn_string) != ((void*)0);
  else {
   found = B_FALSE;
   for (cpy = provs; (tok = strsep(&cpy, " ")) != ((void*)0); )
    if (strcmp(tok, nnp->dn_string) == 0) {
     found = B_TRUE;
     break;
    }
   if (found == B_FALSE)
    found = dt_provider_lookup(dtp,
        nnp->dn_string) != ((void*)0);
  }
  if (provs != ((void*)0))
   dt_free(dtp, provs);
 } else if (strcmp(cnp->dn_string, "module") == 0) {
  dt_module_t *mp = dt_module_lookup_by_name(dtp, nnp->dn_string);
  found = mp != ((void*)0) && dt_module_getctf(dtp, mp) != ((void*)0);
 } else if (strcmp(cnp->dn_string, "library") == 0) {
  if (yypcb->pcb_cflags & DTRACE_C_CTL) {
   assert(dtp->dt_filetag != ((void*)0));

   dt_pragma_depends_finddep(dtp, nnp->dn_string, lib,
       sizeof (lib));

   dld = dt_lib_depend_lookup(&dtp->dt_lib_dep,
       dtp->dt_filetag);
   assert(dld != ((void*)0));

   if ((dt_lib_depend_add(dtp, &dld->dtld_dependencies,
       lib)) != 0) {
    xyerror(D_PRAGMA_DEPEND,
        "failed to add dependency %s:%s\n", lib,
        dtrace_errmsg(dtp, dtrace_errno(dtp)));
   }
  } else {






   if (dtp->dt_filetag == ((void*)0))
    xyerror(D_PRAGMA_DEPEND, "main program may "
        "not explicitly depend on a library");

   dld = dt_lib_depend_lookup(&dtp->dt_lib_dep,
       dtp->dt_filetag);
   assert(dld != ((void*)0));

   dt_pragma_depends_finddep(dtp, nnp->dn_string, lib,
       sizeof (lib));
   dld = dt_lib_depend_lookup(&dtp->dt_lib_dep_sorted,
       lib);
   assert(dld != ((void*)0));

   if (!dld->dtld_loaded)
    xyerror(D_PRAGMA_DEPEND, "program requires "
        "library \"%s\" which failed to load",
        lib);
  }

  found = B_TRUE;
 } else {
  xyerror(D_PRAGMA_INVAL, "invalid class %s "
      "specified by #pragma %s\n", cnp->dn_string, prname);
 }

 if (!found) {
  xyerror(D_PRAGMA_DEPEND, "program requires %s %s\n",
      cnp->dn_string, nnp->dn_string);
 }
}
