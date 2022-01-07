
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_5__ {char* pr_name; int pr_nargc; } ;
typedef TYPE_1__ dt_probe_t ;
typedef int dt_idhash_t ;
struct TYPE_6__ {TYPE_1__* di_data; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_7__ {char* dthi_pmname; char* dthi_pfname; int dthi_out; int dthi_empty; int * dthi_dtp; } ;
typedef TYPE_3__ dt_header_info_t ;


 char* alloca (scalar_t__) ;
 int dt_header_fmt_func (char*,char*) ;
 int dt_header_fmt_macro (char*,char*) ;
 int dt_set_errno (int *,int ) ;
 int errno ;
 scalar_t__ fprintf (int ,char*,...) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
dt_header_probe(dt_idhash_t *dhp, dt_ident_t *idp, void *data)
{
 dt_header_info_t *infop = data;
 dtrace_hdl_t *dtp = infop->dthi_dtp;
 dt_probe_t *prp = idp->di_data;
 char *mname, *fname;
 const char *p;
 int i;

 p = prp->pr_name;
 for (i = 0; (p = strchr(p, '-')) != ((void*)0); i++)
  p++;

 mname = alloca(strlen(prp->pr_name) + 1);
 dt_header_fmt_macro(mname, prp->pr_name);

 fname = alloca(strlen(prp->pr_name) + 1 + i);
 dt_header_fmt_func(fname, prp->pr_name);

 if (fprintf(infop->dthi_out, "#define\t%s_%s(",
     infop->dthi_pmname, mname) < 0)
  return (dt_set_errno(dtp, errno));

 for (i = 0; i < prp->pr_nargc; i++) {
  if (fprintf(infop->dthi_out, "arg%d", i) < 0)
   return (dt_set_errno(dtp, errno));

  if (i + 1 != prp->pr_nargc &&
      fprintf(infop->dthi_out, ", ") < 0)
   return (dt_set_errno(dtp, errno));
 }

 if (!infop->dthi_empty) {
  if (fprintf(infop->dthi_out, ") \\\n\t") < 0)
   return (dt_set_errno(dtp, errno));

  if (fprintf(infop->dthi_out, "__dtrace_%s___%s(",
      infop->dthi_pfname, fname) < 0)
   return (dt_set_errno(dtp, errno));

  for (i = 0; i < prp->pr_nargc; i++) {
   if (fprintf(infop->dthi_out, "arg%d", i) < 0)
    return (dt_set_errno(dtp, errno));

   if (i + 1 != prp->pr_nargc &&
       fprintf(infop->dthi_out, ", ") < 0)
    return (dt_set_errno(dtp, errno));
  }
 }

 if (fprintf(infop->dthi_out, ")\n") < 0)
  return (dt_set_errno(dtp, errno));

 if (!infop->dthi_empty) {
  if (fprintf(infop->dthi_out,
      "#ifndef\t__sparc\n"
      "#define\t%s_%s_ENABLED() \\\n"
      "\t__dtraceenabled_%s___%s()\n"
      "#else\n"
      "#define\t%s_%s_ENABLED() \\\n"
      "\t__dtraceenabled_%s___%s(0)\n"
      "#endif\n",
      infop->dthi_pmname, mname,
      infop->dthi_pfname, fname,
      infop->dthi_pmname, mname,
      infop->dthi_pfname, fname) < 0)
   return (dt_set_errno(dtp, errno));

 } else {
  if (fprintf(infop->dthi_out, "#define\t%s_%s_ENABLED() (0)\n",
      infop->dthi_pmname, mname) < 0)
   return (dt_set_errno(dtp, errno));
 }

 return (0);
}
