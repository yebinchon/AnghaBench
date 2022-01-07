
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_6__ {char* pr_name; int pr_nargc; TYPE_2__* pr_nargs; } ;
typedef TYPE_1__ dt_probe_t ;
struct TYPE_7__ {int dn_type; int dn_ctfp; struct TYPE_7__* dn_list; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_idhash_t ;
struct TYPE_8__ {TYPE_1__* di_data; } ;
typedef TYPE_3__ dt_ident_t ;
struct TYPE_9__ {char* dthi_pfname; int dthi_out; int * dthi_dtp; } ;
typedef TYPE_4__ dt_header_info_t ;
typedef int buf ;


 int DT_TYPE_NAMELEN ;
 char* alloca (scalar_t__) ;
 char* ctf_type_name (int ,int ,char*,int) ;
 int dt_header_fmt_func (char*,char*) ;
 int dt_set_errno (int *,int ) ;
 int errno ;
 scalar_t__ fprintf (int ,char*,...) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
dt_header_decl(dt_idhash_t *dhp, dt_ident_t *idp, void *data)
{
 dt_header_info_t *infop = data;
 dtrace_hdl_t *dtp = infop->dthi_dtp;
 dt_probe_t *prp = idp->di_data;
 dt_node_t *dnp;
 char buf[DT_TYPE_NAMELEN];
 char *fname;
 const char *p;
 int i;

 p = prp->pr_name;
 for (i = 0; (p = strchr(p, '-')) != ((void*)0); i++)
  p++;

 fname = alloca(strlen(prp->pr_name) + 1 + i);
 dt_header_fmt_func(fname, prp->pr_name);

 if (fprintf(infop->dthi_out, "extern void __dtrace_%s___%s(",
     infop->dthi_pfname, fname) < 0)
  return (dt_set_errno(dtp, errno));

 for (dnp = prp->pr_nargs, i = 0; dnp != ((void*)0); dnp = dnp->dn_list, i++) {
  if (fprintf(infop->dthi_out, "%s",
      ctf_type_name(dnp->dn_ctfp, dnp->dn_type,
      buf, sizeof (buf))) < 0)
   return (dt_set_errno(dtp, errno));

  if (i + 1 != prp->pr_nargc &&
      fprintf(infop->dthi_out, ", ") < 0)
   return (dt_set_errno(dtp, errno));
 }

 if (i == 0 && fprintf(infop->dthi_out, "void") < 0)
  return (dt_set_errno(dtp, errno));

 if (fprintf(infop->dthi_out, ");\n") < 0)
  return (dt_set_errno(dtp, errno));

 if (fprintf(infop->dthi_out,
     "#ifndef\t__sparc\n"
     "extern int __dtraceenabled_%s___%s(void);\n"
     "#else\n"
     "extern int __dtraceenabled_%s___%s(long);\n"
     "#endif\n",
     infop->dthi_pfname, fname, infop->dthi_pfname, fname) < 0)
  return (dt_set_errno(dtp, errno));

 return (0);
}
