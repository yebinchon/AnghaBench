
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_longlong_t ;
struct TYPE_5__ {char* dts_object; char* dts_name; } ;
typedef TYPE_1__ dtrace_syminfo_t ;
typedef int dtrace_hdl_t ;
struct TYPE_6__ {scalar_t__ st_value; } ;
typedef TYPE_2__ GElf_Sym ;


 char* alloca (size_t) ;
 int dt_string2str (char*,char*,int) ;
 int dtrace_lookup_by_addr (int *,scalar_t__,TYPE_2__*,TYPE_1__*) ;
 int snprintf (char*,size_t,char*,scalar_t__,...) ;
 scalar_t__ strlen (char*) ;

int
dtrace_addr2str(dtrace_hdl_t *dtp, uint64_t addr, char *str, int nbytes)
{
 dtrace_syminfo_t dts;
 GElf_Sym sym;

 size_t n = 20;
 char *s;
 int err;

 if ((err = dtrace_lookup_by_addr(dtp, addr, &sym, &dts)) == 0)
  n += strlen(dts.dts_object) + strlen(dts.dts_name) + 2;

 s = alloca(n);

 if (err == 0 && addr != sym.st_value) {
  (void) snprintf(s, n, "%s`%s+0x%llx", dts.dts_object,
      dts.dts_name, (u_longlong_t)addr - sym.st_value);
 } else if (err == 0) {
  (void) snprintf(s, n, "%s`%s",
      dts.dts_object, dts.dts_name);
 } else {





  if (dtrace_lookup_by_addr(dtp, addr, ((void*)0), &dts) == 0) {
   (void) snprintf(s, n, "%s`0x%llx", dts.dts_object,
       (u_longlong_t)addr);
  } else {
   (void) snprintf(s, n, "0x%llx", (u_longlong_t)addr);
  }
 }

 return (dt_string2str(s, str, nbytes));
}
