
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct ps_prochandle {int dummy; } ;
struct TYPE_11__ {int * dt_vector; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef scalar_t__ dtrace_actkind_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_12__ {int st_value; } ;
typedef TYPE_2__ GElf_Sym ;
typedef int FILE ;


 scalar_t__ DTRACEACT_USYM ;
 int PGRAB_FORCE ;
 int PGRAB_RDONLY ;
 scalar_t__ Plookup_by_addr (struct ps_prochandle*,int ,int *,int ,TYPE_2__*) ;
 char* alloca (int) ;
 int dt_printf (TYPE_1__*,int *,char const*,char*) ;
 struct ps_prochandle* dt_proc_grab (TYPE_1__*,int ,int,int ) ;
 int dt_proc_lock (TYPE_1__*,struct ps_prochandle*) ;
 int dt_proc_release (TYPE_1__*,struct ps_prochandle*) ;
 int dt_proc_unlock (TYPE_1__*,struct ps_prochandle*) ;
 int dtrace_uaddr2str (TYPE_1__*,int ,int ,char*,int) ;

__attribute__((used)) static int
dt_print_usym(dtrace_hdl_t *dtp, FILE *fp, caddr_t addr, dtrace_actkind_t act)
{

 uint64_t pid = ((uint64_t *)addr)[0];

 uint64_t pc = ((uint64_t *)addr)[1];
 const char *format = "  %-50s";
 char *s;
 int n, len = 256;

 if (act == DTRACEACT_USYM && dtp->dt_vector == ((void*)0)) {
  struct ps_prochandle *P;

  if ((P = dt_proc_grab(dtp, pid,
      PGRAB_RDONLY | PGRAB_FORCE, 0)) != ((void*)0)) {
   GElf_Sym sym;

   dt_proc_lock(dtp, P);

   if (Plookup_by_addr(P, pc, ((void*)0), 0, &sym) == 0)
    pc = sym.st_value;

   dt_proc_unlock(dtp, P);
   dt_proc_release(dtp, P);
  }
 }

 do {
  n = len;
  s = alloca(n);
 } while ((len = dtrace_uaddr2str(dtp, pid, pc, s, n)) > n);

 return (dt_printf(dtp, fp, format, s));
}
