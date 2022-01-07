
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int n ;
struct TYPE_20__ {struct TYPE_20__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_21__ {int dis_varargs; int dis_optargs; int dis_argc; TYPE_8__* dis_args; scalar_t__ dis_auxinfo; } ;
typedef TYPE_2__ dt_idsig_t ;
struct TYPE_22__ {int di_flags; scalar_t__ di_kind; int di_type; int di_ctfp; TYPE_2__* di_data; } ;
typedef TYPE_3__ dt_ident_t ;
struct TYPE_24__ {struct TYPE_24__* dn_list; } ;
struct TYPE_23__ {int pcb_hdl; int pcb_jmpbuf; } ;


 int B_FALSE ;
 int DT_DYN_CTFP (int ) ;
 int DT_DYN_TYPE (int ) ;
 scalar_t__ DT_IDENT_AGG ;
 int DT_IDFLG_DECL ;
 int DT_TYPE_NAMELEN ;
 int D_KEY_TYPE ;
 int EDT_NOMEM ;
 TYPE_8__* calloc (int,int) ;
 int dt_idcook_sign (TYPE_1__*,TYPE_3__*,int,TYPE_1__*,char*,char*) ;
 int dt_idkind_name (scalar_t__) ;
 scalar_t__ dt_node_is_dynamic (TYPE_1__*) ;
 scalar_t__ dt_node_is_void (TYPE_1__*) ;
 int dt_node_type_assign (TYPE_1__*,int ,int ,int ) ;
 int dt_node_type_name (TYPE_1__*,char*,int) ;
 int dt_node_type_propagate (TYPE_1__*,TYPE_8__*) ;
 int free (TYPE_2__*) ;
 int longjmp (int ,int ) ;
 TYPE_2__* malloc (int) ;
 int xyerror (int ,char*,int ,int ,int) ;
 TYPE_4__* yypcb ;

__attribute__((used)) static void
dt_idcook_assc(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
 if (idp->di_data == ((void*)0)) {
  dt_idsig_t *isp = idp->di_data = malloc(sizeof (dt_idsig_t));
  char n[DT_TYPE_NAMELEN];
  int i;

  if (isp == ((void*)0))
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

  isp->dis_varargs = -1;
  isp->dis_optargs = -1;
  isp->dis_argc = argc;
  isp->dis_args = ((void*)0);
  isp->dis_auxinfo = 0;

  if (argc != 0 && (isp->dis_args = calloc(argc,
      sizeof (dt_node_t))) == ((void*)0)) {
   idp->di_data = ((void*)0);
   free(isp);
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
  }
  if (!(idp->di_flags & DT_IDFLG_DECL)) {
   idp->di_ctfp = DT_DYN_CTFP(yypcb->pcb_hdl);
   idp->di_type = DT_DYN_TYPE(yypcb->pcb_hdl);
  }

  for (i = 0; i < argc; i++, args = args->dn_list) {
   if (dt_node_is_dynamic(args) || dt_node_is_void(args)) {
    xyerror(D_KEY_TYPE, "%s expression may not be "
        "used as %s index: key #%d\n",
        dt_node_type_name(args, n, sizeof (n)),
        dt_idkind_name(idp->di_kind), i + 1);
   }

   dt_node_type_propagate(args, &isp->dis_args[i]);
   isp->dis_args[i].dn_list = &isp->dis_args[i + 1];
  }

  if (argc != 0)
   isp->dis_args[argc - 1].dn_list = ((void*)0);

  dt_node_type_assign(dnp, idp->di_ctfp, idp->di_type, B_FALSE);

 } else {
  dt_idcook_sign(dnp, idp, argc, args,
      idp->di_kind == DT_IDENT_AGG ? "@" : "", "[ ]");
 }
}
