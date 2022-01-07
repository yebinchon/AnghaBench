
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int dtt_type; int dtt_ctfp; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
typedef int dtrace_hdl_t ;
typedef int dt_node_t ;
struct TYPE_13__ {int dis_varargs; int dis_optargs; int dis_argc; TYPE_8__* dis_args; scalar_t__ dis_auxinfo; } ;
typedef TYPE_2__ dt_idsig_t ;
struct TYPE_14__ {char* di_iarg; scalar_t__ di_kind; int di_name; int di_type; int di_ctfp; TYPE_2__* di_data; } ;
typedef TYPE_3__ dt_ident_t ;
struct TYPE_16__ {int dn_type; int * dn_ctfp; } ;
struct TYPE_15__ {int pcb_jmpbuf; int * pcb_hdl; } ;


 int B_FALSE ;
 int CTF_ERR ;
 int DT_DYN_CTFP (int *) ;
 int DT_DYN_TYPE (int *) ;
 scalar_t__ DT_IDENT_AGGFUNC ;
 int D_UNKNOWN ;
 int EDT_NOMEM ;
 char* alloca (int) ;
 int assert (int ) ;
 TYPE_8__* calloc (int,int) ;
 int dt_idcook_sign (int *,TYPE_3__*,int,int *,char*,char*) ;
 int dt_node_type_assign (TYPE_8__*,int ,int ,int ) ;
 int dt_type_lookup (char*,TYPE_1__*) ;
 int dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 int free (TYPE_2__*) ;
 scalar_t__ isspace (char) ;
 int longjmp (int ,int ) ;
 TYPE_2__* malloc (int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int xyerror (int ,char*,int,...) ;
 TYPE_4__* yypcb ;

__attribute__((used)) static void
dt_idcook_func(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
 if (idp->di_data == ((void*)0)) {
  dtrace_hdl_t *dtp = yypcb->pcb_hdl;
  dtrace_typeinfo_t dtt;
  dt_idsig_t *isp;
  char *s, *p1, *p2;
  int i = 0;

  assert(idp->di_iarg != ((void*)0));
  s = alloca(strlen(idp->di_iarg) + 1);
  (void) strcpy(s, idp->di_iarg);

  if ((p2 = strrchr(s, ')')) != ((void*)0))
   *p2 = '\0';

  if ((p1 = strchr(s, '(')) != ((void*)0))
   *p1++ = '\0';

  if (p1 == ((void*)0) || p2 == ((void*)0)) {
   xyerror(D_UNKNOWN, "internal error: malformed entry "
       "for built-in function %s\n", idp->di_name);
  }

  for (p2 = p1; *p2 != '\0'; p2++) {
   if (!isspace(*p2)) {
    i++;
    break;
   }
  }

  for (p2 = strchr(p2, ','); p2++ != ((void*)0); i++)
   p2 = strchr(p2, ',');






  if ((isp = idp->di_data = malloc(sizeof (dt_idsig_t))) == ((void*)0))
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

  isp->dis_varargs = -1;
  isp->dis_optargs = -1;
  isp->dis_argc = i;
  isp->dis_args = ((void*)0);
  isp->dis_auxinfo = 0;

  if (i != 0 && (isp->dis_args = calloc(i,
      sizeof (dt_node_t))) == ((void*)0)) {
   idp->di_data = ((void*)0);
   free(isp);
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
  }

  if (dt_type_lookup(s, &dtt) == -1) {
   xyerror(D_UNKNOWN, "failed to resolve type of %s (%s):"
       " %s\n", idp->di_name, s,
       dtrace_errmsg(dtp, dtrace_errno(dtp)));
  }

  if (idp->di_kind == DT_IDENT_AGGFUNC) {
   idp->di_ctfp = DT_DYN_CTFP(dtp);
   idp->di_type = DT_DYN_TYPE(dtp);
  } else {
   idp->di_ctfp = dtt.dtt_ctfp;
   idp->di_type = dtt.dtt_type;
  }
  for (i = 0; i < isp->dis_argc; i++, p1 = p2) {
   while (isspace(*p1))
    p1++;

   if ((p2 = strchr(p1, ',')) == ((void*)0))
    p2 = p1 + strlen(p1);
   else
    *p2++ = '\0';

   if (strcmp(p1, "@") == 0 || strcmp(p1, "...") == 0) {
    isp->dis_args[i].dn_ctfp = ((void*)0);
    isp->dis_args[i].dn_type = CTF_ERR;
    if (*p1 == '.')
     isp->dis_varargs = i;
    continue;
   }

   if (*p1 == '[' && p1[strlen(p1) - 1] == ']') {
    if (isp->dis_varargs != -1) {
     xyerror(D_UNKNOWN, "optional arg#%d "
         "may not follow variable arg#%d\n",
         i + 1, isp->dis_varargs + 1);
    }

    if (isp->dis_optargs == -1)
     isp->dis_optargs = i;

    p1[strlen(p1) - 1] = '\0';
    p1++;
   } else if (isp->dis_optargs != -1) {
    xyerror(D_UNKNOWN, "required arg#%d may not "
        "follow optional arg#%d\n", i + 1,
        isp->dis_optargs + 1);
   }

   if (dt_type_lookup(p1, &dtt) == -1) {
    xyerror(D_UNKNOWN, "failed to resolve type of "
        "%s arg#%d (%s): %s\n", idp->di_name, i + 1,
        p1, dtrace_errmsg(dtp, dtrace_errno(dtp)));
   }

   dt_node_type_assign(&isp->dis_args[i],
       dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);
  }
 }

 dt_idcook_sign(dnp, idp, argc, args, "", "( )");
}
