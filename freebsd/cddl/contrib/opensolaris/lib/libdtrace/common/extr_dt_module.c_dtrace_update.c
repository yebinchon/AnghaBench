
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char kld_file_stat ;
struct dirent {char* d_name; } ;
typedef int k_stat ;
struct TYPE_7__ {int dt_oflags; int * dt_exec; int dt_modlist; int * dt_ddefs; int * dt_cdefs; int * dt_rtld; int dt_macros; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dt_module_t ;
struct TYPE_8__ {int di_id; } ;
typedef int DIR ;


 int DTRACE_O_NOSYS ;
 int OBJFS_ROOT ;
 int closedir (int *) ;
 TYPE_6__* dt_idhash_lookup (int ,char*) ;
 int dt_list_delete (int *,int *) ;
 int * dt_list_next (int *) ;
 int dt_list_prepend (int *,int *) ;
 void* dt_module_lookup_by_name (TYPE_1__*,char*) ;
 int dt_module_unload (TYPE_1__*,int *) ;
 int dt_module_update (TYPE_1__*,char*) ;
 int getegid () ;
 int geteuid () ;
 int getgid () ;
 int getpgid (int ) ;
 int getpid () ;
 int getppid () ;
 int getprojid () ;
 int getsid (int ) ;
 int gettaskid () ;
 int getuid () ;
 int kldnext (int) ;
 scalar_t__ kldstat (int,char*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;

void
dtrace_update(dtrace_hdl_t *dtp)
{
 dt_module_t *dmp;
 DIR *dirp;




 for (dmp = dt_list_next(&dtp->dt_modlist);
     dmp != ((void*)0); dmp = dt_list_next(dmp))
  dt_module_unload(dtp, dmp);
 dt_idhash_lookup(dtp->dt_macros, "egid")->di_id = getegid();
 dt_idhash_lookup(dtp->dt_macros, "euid")->di_id = geteuid();
 dt_idhash_lookup(dtp->dt_macros, "gid")->di_id = getgid();
 dt_idhash_lookup(dtp->dt_macros, "pid")->di_id = getpid();
 dt_idhash_lookup(dtp->dt_macros, "pgid")->di_id = getpgid(0);
 dt_idhash_lookup(dtp->dt_macros, "ppid")->di_id = getppid();



 dt_idhash_lookup(dtp->dt_macros, "sid")->di_id = getsid(0);



 dt_idhash_lookup(dtp->dt_macros, "uid")->di_id = getuid();







 dtp->dt_exec = dt_module_lookup_by_name(dtp, "genunix");
 dtp->dt_rtld = dt_module_lookup_by_name(dtp, "krtld");
 if (dtp->dt_rtld == ((void*)0))
  dtp->dt_rtld = dt_module_lookup_by_name(dtp, "unix");
 if (dtp->dt_exec != ((void*)0) &&
     dtp->dt_cdefs == ((void*)0) && dtp->dt_ddefs == ((void*)0)) {
  dt_list_delete(&dtp->dt_modlist, dtp->dt_exec);
  dt_list_prepend(&dtp->dt_modlist, dtp->dt_exec);
 }
}
