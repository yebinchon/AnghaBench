
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
struct ps_prochandle {int dummy; } ;
typedef scalar_t__ pid_t ;
typedef int objname ;
typedef int name ;
typedef int dtrace_hdl_t ;
typedef int c ;
struct TYPE_3__ {scalar_t__ st_value; } ;
typedef TYPE_1__ GElf_Sym ;


 int PATH_MAX ;
 int PGRAB_FORCE ;
 int PGRAB_RDONLY ;
 scalar_t__ Plookup_by_addr (struct ps_prochandle*,scalar_t__,char*,int,TYPE_1__*) ;
 scalar_t__ Pobjname (struct ps_prochandle*,scalar_t__,char*,int) ;
 char* dt_basename (char*) ;
 struct ps_prochandle* dt_proc_grab (int *,scalar_t__,int,int ) ;
 int dt_proc_lock (int *,struct ps_prochandle*) ;
 int dt_proc_release (int *,struct ps_prochandle*) ;
 int dt_proc_unlock (int *,struct ps_prochandle*) ;
 int dt_string2str (char*,char*,int) ;
 int snprintf (char*,int,char*,char*,...) ;

int
dtrace_uaddr2str(dtrace_hdl_t *dtp, pid_t pid,
    uint64_t addr, char *str, int nbytes)
{
 char name[PATH_MAX], objname[PATH_MAX], c[PATH_MAX * 2];
 struct ps_prochandle *P = ((void*)0);
 GElf_Sym sym;
 char *obj;

 if (pid != 0)
  P = dt_proc_grab(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE, 0);

 if (P == ((void*)0)) {
   (void) snprintf(c, sizeof (c), "0x%jx", (uintmax_t)addr);
  return (dt_string2str(c, str, nbytes));
 }

 dt_proc_lock(dtp, P);

 if (Plookup_by_addr(P, addr, name, sizeof (name), &sym) == 0) {
  (void) Pobjname(P, addr, objname, sizeof (objname));

  obj = dt_basename(objname);

  if (addr > sym.st_value) {
   (void) snprintf(c, sizeof (c), "%s`%s+0x%llx", obj,
       name, (u_longlong_t)(addr - sym.st_value));
  } else {
   (void) snprintf(c, sizeof (c), "%s`%s", obj, name);
  }
 } else if (Pobjname(P, addr, objname, sizeof (objname)) != 0) {
  (void) snprintf(c, sizeof (c), "%s`0x%jx",
    dt_basename(objname), (uintmax_t)addr);
 } else {
   (void) snprintf(c, sizeof (c), "0x%jx", (uintmax_t)addr);
 }

 dt_proc_unlock(dtp, P);
 dt_proc_release(dtp, P);

 return (dt_string2str(c, str, nbytes));
}
