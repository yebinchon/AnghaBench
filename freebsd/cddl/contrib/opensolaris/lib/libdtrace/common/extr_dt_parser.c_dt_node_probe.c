
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int dt_gen; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_14__ {int * dn_ident; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_15__ {int pcb_jmpbuf; TYPE_1__* pcb_hdl; } ;


 int DTRACE_IDNONE ;
 int DTRACE_NAMELEN ;
 int DT_DP_ANON ;
 int DT_DP_VOID ;
 int DT_IDENT_PROBE ;
 int DT_IDFLG_ORPHAN ;
 int DT_NODE_PROBE ;
 int D_PROV_BADNAME ;
 int D_PROV_PRARGLEN ;
 int EDT_NOMEM ;
 int UINT8_MAX ;
 int _dtrace_defattr ;
 char* alloca (size_t) ;
 int dt_decl_prototype (TYPE_2__*,TYPE_2__*,char*,int) ;
 int * dt_ident_create (char*,int ,int ,int ,int ,int ,int *,int *,int ) ;
 int dt_idops_probe ;
 TYPE_2__* dt_node_alloc (int ) ;
 int * dt_probe_create (TYPE_1__*,int *,int,TYPE_2__*,int,TYPE_2__*,int) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 int snprintf (char*,size_t,char*,char*) ;
 int * strchr (char*,char) ;
 int strhyphenate (char*) ;
 int strlen (char*) ;
 int xyerror (int ,char*,...) ;
 TYPE_3__* yypcb ;

dt_node_t *
dt_node_probe(char *s, int protoc, dt_node_t *nargs, dt_node_t *xargs)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 int nargc, xargc;
 dt_node_t *dnp;

 size_t len = strlen(s) + 3;
 char *name = alloca(len);

 (void) snprintf(name, len, "::%s", s);
 (void) strhyphenate(name);
 free(s);

 if (strchr(name, '`') != ((void*)0)) {
  xyerror(D_PROV_BADNAME, "probe name may not "
      "contain scoping operator: %s\n", name);
 }

 if (strlen(name) - 2 >= DTRACE_NAMELEN) {
  xyerror(D_PROV_BADNAME, "probe name may not exceed %d "
      "characters: %s\n", DTRACE_NAMELEN - 1, name);
 }

 dnp = dt_node_alloc(DT_NODE_PROBE);

 dnp->dn_ident = dt_ident_create(name, DT_IDENT_PROBE,
     DT_IDFLG_ORPHAN, DTRACE_IDNONE, _dtrace_defattr, 0,
     &dt_idops_probe, ((void*)0), dtp->dt_gen);

 nargc = dt_decl_prototype(nargs, nargs,
     "probe input", DT_DP_VOID | DT_DP_ANON);

 xargc = dt_decl_prototype(xargs, nargs,
     "probe output", DT_DP_VOID);

 if (nargc > UINT8_MAX) {
  xyerror(D_PROV_PRARGLEN, "probe %s input prototype exceeds %u "
      "parameters: %d params used\n", name, UINT8_MAX, nargc);
 }

 if (xargc > UINT8_MAX) {
  xyerror(D_PROV_PRARGLEN, "probe %s output prototype exceeds %u "
      "parameters: %d params used\n", name, UINT8_MAX, xargc);
 }

 if (dnp->dn_ident == ((void*)0) || dt_probe_create(dtp,
     dnp->dn_ident, protoc, nargs, nargc, xargs, xargc) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 return (dnp);
}
