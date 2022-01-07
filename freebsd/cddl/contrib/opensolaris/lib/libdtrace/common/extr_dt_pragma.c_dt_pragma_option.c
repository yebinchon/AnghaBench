
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {scalar_t__ dn_kind; int dn_string; int * dn_list; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_5__ {int * pcb_hdl; } ;


 scalar_t__ DT_NODE_IDENT ;
 int D_PRAGMA_MALFORM ;
 int D_PRAGMA_OPTSET ;
 char* alloca (scalar_t__) ;
 int dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 int dtrace_setopt (int *,char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 int xyerror (int ,char*,char const*,...) ;
 TYPE_2__* yypcb ;

__attribute__((used)) static void
dt_pragma_option(const char *prname, dt_node_t *dnp)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 char *opt, *val;

 if (dnp == ((void*)0) || dnp->dn_kind != DT_NODE_IDENT) {
  xyerror(D_PRAGMA_MALFORM,
      "malformed #pragma %s <option>=<val>\n", prname);
 }

 if (dnp->dn_list != ((void*)0)) {
  xyerror(D_PRAGMA_MALFORM,
      "superfluous arguments specified for #pragma %s\n", prname);
 }

 opt = alloca(strlen(dnp->dn_string) + 1);
 (void) strcpy(opt, dnp->dn_string);

 if ((val = strchr(opt, '=')) != ((void*)0))
  *val++ = '\0';

 if (dtrace_setopt(dtp, opt, val) == -1) {
  if (val == ((void*)0)) {
   xyerror(D_PRAGMA_OPTSET,
       "failed to set option '%s': %s\n", opt,
       dtrace_errmsg(dtp, dtrace_errno(dtp)));
  } else {
   xyerror(D_PRAGMA_OPTSET,
       "failed to set option '%s' to '%s': %s\n",
       opt, val, dtrace_errmsg(dtp, dtrace_errno(dtp)));
  }
 }
}
