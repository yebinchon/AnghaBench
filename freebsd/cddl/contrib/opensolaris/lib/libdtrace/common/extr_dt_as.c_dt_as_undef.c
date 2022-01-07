
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_4__ {int dts_name; int dts_object; } ;
typedef TYPE_1__ dtrace_syminfo_t ;
struct TYPE_5__ {int di_flags; int di_lineno; TYPE_1__* di_data; } ;
typedef TYPE_2__ dt_ident_t ;


 int DT_IDFLG_PRIM ;
 int DT_IDFLG_USER ;
 int D_ASRELO ;
 int xyerror (int ,char*,char const*,int ,char const*,int ,int ) ;
 int yylineno ;

__attribute__((used)) static void
dt_as_undef(const dt_ident_t *idp, uint_t offset)
{
 const char *kind, *mark = (idp->di_flags & DT_IDFLG_USER) ? "``" : "`";
 const dtrace_syminfo_t *dts = idp->di_data;

 if (idp->di_flags & DT_IDFLG_USER)
  kind = "user";
 else if (idp->di_flags & DT_IDFLG_PRIM)
  kind = "primary kernel";
 else
  kind = "loadable kernel";

 yylineno = idp->di_lineno;

 xyerror(D_ASRELO, "relocation remains against %s symbol %s%s%s (offset "
     "0x%x)\n", kind, dts->dts_object, mark, dts->dts_name, offset);
}
