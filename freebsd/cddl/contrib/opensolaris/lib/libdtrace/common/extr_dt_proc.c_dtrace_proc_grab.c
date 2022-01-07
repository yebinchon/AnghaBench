
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef scalar_t__ pid_t ;
struct TYPE_6__ {int dt_macros; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {scalar_t__ di_id; } ;
typedef TYPE_2__ dt_ident_t ;


 TYPE_2__* dt_idhash_lookup (int ,char*) ;
 struct ps_prochandle* dt_proc_grab (TYPE_1__*,scalar_t__,int,int ) ;

struct ps_prochandle *
dtrace_proc_grab(dtrace_hdl_t *dtp, pid_t pid, int flags)
{
 dt_ident_t *idp = dt_idhash_lookup(dtp->dt_macros, "target");
 struct ps_prochandle *P = dt_proc_grab(dtp, pid, flags, 0);

 if (P != ((void*)0) && idp != ((void*)0) && idp->di_id == 0)
  idp->di_id = pid;

 return (P);
}
