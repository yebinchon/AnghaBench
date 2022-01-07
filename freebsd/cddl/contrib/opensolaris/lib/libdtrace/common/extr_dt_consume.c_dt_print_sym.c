
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
struct TYPE_3__ {char* dts_object; char* dts_name; } ;
typedef TYPE_1__ dtrace_syminfo_t ;
typedef int dtrace_hdl_t ;
typedef scalar_t__ caddr_t ;
typedef int c ;
typedef int GElf_Sym ;
typedef int FILE ;


 int PATH_MAX ;
 scalar_t__ dt_printf (int *,int *,char const*,char*) ;
 scalar_t__ dtrace_lookup_by_addr (int *,scalar_t__,int *,TYPE_1__*) ;
 int snprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static int
dt_print_sym(dtrace_hdl_t *dtp, FILE *fp, const char *format, caddr_t addr)
{

 uint64_t pc = *((uint64_t *)addr);
 dtrace_syminfo_t dts;
 GElf_Sym sym;
 char c[PATH_MAX * 2];

 if (format == ((void*)0))
  format = "  %-50s";

 if (dtrace_lookup_by_addr(dtp, pc, &sym, &dts) == 0) {
  (void) snprintf(c, sizeof (c), "%s`%s",
      dts.dts_object, dts.dts_name);
 } else {





  if (dtrace_lookup_by_addr(dtp, pc, ((void*)0), &dts) == 0) {
   (void) snprintf(c, sizeof (c), "%s`0x%llx",
       dts.dts_object, (u_longlong_t)pc);
  } else {
   (void) snprintf(c, sizeof (c), "0x%llx",
       (u_longlong_t)pc);
  }
 }

 if (dt_printf(dtp, fp, format, c) < 0)
  return (-1);

 return (0);
}
