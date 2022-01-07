
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_6__ {char* dtvd_name; } ;
struct TYPE_7__ {int pv_flags; int pv_probes; TYPE_1__ pv_desc; } ;
typedef TYPE_2__ dt_provider_t ;
struct TYPE_8__ {int dthi_empty; void* dthi_pfname; void* dthi_pmname; int * dthi_out; int * dthi_dtp; } ;
typedef TYPE_3__ dt_header_info_t ;
typedef int FILE ;


 int DT_PROVIDER_IMPL ;
 void* alloca (scalar_t__) ;
 int dt_header_decl ;
 int dt_header_fmt_func (void*,char*) ;
 int dt_header_fmt_macro (void*,char*) ;
 int dt_header_probe ;
 scalar_t__ dt_idhash_iter (int ,int ,TYPE_3__*) ;
 int dt_set_errno (int *,int ) ;
 int errno ;
 scalar_t__ fprintf (int *,char*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
dt_header_provider(dtrace_hdl_t *dtp, dt_provider_t *pvp, FILE *out)
{
 dt_header_info_t info;
 const char *p;
 int i;

 if (pvp->pv_flags & DT_PROVIDER_IMPL)
  return (0);





 p = pvp->pv_desc.dtvd_name;
 for (i = 0; (p = strchr(p, '-')) != ((void*)0); i++)
  p++;

 info.dthi_dtp = dtp;
 info.dthi_out = out;
 info.dthi_empty = 0;

 info.dthi_pmname = alloca(strlen(pvp->pv_desc.dtvd_name) + 1);
 dt_header_fmt_macro(info.dthi_pmname, pvp->pv_desc.dtvd_name);

 info.dthi_pfname = alloca(strlen(pvp->pv_desc.dtvd_name) + 1 + i);
 dt_header_fmt_func(info.dthi_pfname, pvp->pv_desc.dtvd_name);





 if (fprintf(out, "#if _DTRACE_VERSION\n\n") < 0)
  return (dt_set_errno(dtp, errno));

 if (dt_idhash_iter(pvp->pv_probes, dt_header_probe, &info) != 0)
  return (-1);
 if (fprintf(out, "\n\n") < 0)
  return (dt_set_errno(dtp, errno));
 if (dt_idhash_iter(pvp->pv_probes, dt_header_decl, &info) != 0)
  return (-1);

 if (fprintf(out, "\n#else\n\n") < 0)
  return (dt_set_errno(dtp, errno));

 info.dthi_empty = 1;

 if (dt_idhash_iter(pvp->pv_probes, dt_header_probe, &info) != 0)
  return (-1);

 if (fprintf(out, "\n#endif\n\n") < 0)
  return (dt_set_errno(dtp, errno));

 return (0);
}
