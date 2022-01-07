
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef char* u_longlong_t ;
struct ps_prochandle {int dummy; } ;
typedef int objname ;
struct TYPE_8__ {int * dt_vector; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef scalar_t__ caddr_t ;
typedef int c ;
typedef int FILE ;


 int PATH_MAX ;
 int PGRAB_FORCE ;
 int PGRAB_RDONLY ;
 scalar_t__ Pobjname (struct ps_prochandle*,scalar_t__,char*,int) ;
 char* dt_basename (char*) ;
 int dt_printf (TYPE_1__*,int *,char const*,char*) ;
 struct ps_prochandle* dt_proc_grab (TYPE_1__*,scalar_t__,int,int ) ;
 int dt_proc_lock (TYPE_1__*,struct ps_prochandle*) ;
 int dt_proc_release (TYPE_1__*,struct ps_prochandle*) ;
 int dt_proc_unlock (TYPE_1__*,struct ps_prochandle*) ;
 int snprintf (char*,int,char*,char*) ;

int
dt_print_umod(dtrace_hdl_t *dtp, FILE *fp, const char *format, caddr_t addr)
{

 uint64_t pid = ((uint64_t *)addr)[0];

 uint64_t pc = ((uint64_t *)addr)[1];
 int err = 0;

 char objname[PATH_MAX], c[PATH_MAX * 2];
 struct ps_prochandle *P;

 if (format == ((void*)0))
  format = "  %-50s";





 if (dtp->dt_vector == ((void*)0))
  P = dt_proc_grab(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE, 0);
 else
  P = ((void*)0);

 if (P != ((void*)0))
  dt_proc_lock(dtp, P);

 if (P != ((void*)0) && Pobjname(P, pc, objname, sizeof (objname)) != 0) {
  (void) snprintf(c, sizeof (c), "%s", dt_basename(objname));
 } else {
  (void) snprintf(c, sizeof (c), "0x%llx", (u_longlong_t)pc);
 }

 err = dt_printf(dtp, fp, format, c);

 if (P != ((void*)0)) {
  dt_proc_unlock(dtp, P);
  dt_proc_release(dtp, P);
 }

 return (err);
}
