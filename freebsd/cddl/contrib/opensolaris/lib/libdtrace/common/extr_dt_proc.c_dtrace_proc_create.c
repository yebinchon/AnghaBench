
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int proc_child_func ;
struct TYPE_7__ {int dt_macros; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_8__ {scalar_t__ di_id; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_9__ {scalar_t__ pr_pid; } ;


 TYPE_6__* Pstatus (struct ps_prochandle*) ;
 TYPE_2__* dt_idhash_lookup (int ,char*) ;
 struct ps_prochandle* dt_proc_create (TYPE_1__*,char const*,char* const*,int *,void*) ;
 scalar_t__ proc_getpid (struct ps_prochandle*) ;

struct ps_prochandle *
dtrace_proc_create(dtrace_hdl_t *dtp, const char *file, char *const *argv,
    proc_child_func *pcf, void *child_arg)
{
 dt_ident_t *idp = dt_idhash_lookup(dtp->dt_macros, "target");
 struct ps_prochandle *P = dt_proc_create(dtp, file, argv, pcf, child_arg);

 if (P != ((void*)0) && idp != ((void*)0) && idp->di_id == 0) {



  idp->di_id = proc_getpid(P);

 }

 return (P);
}
