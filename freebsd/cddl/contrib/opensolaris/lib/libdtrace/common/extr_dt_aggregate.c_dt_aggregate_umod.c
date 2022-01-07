
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct ps_prochandle {int dummy; } ;
struct TYPE_9__ {int pr_vaddr; } ;
typedef TYPE_1__ prmap_t ;
struct TYPE_10__ {int * dt_vector; } ;
typedef TYPE_2__ dtrace_hdl_t ;


 int PGRAB_FORCE ;
 int PGRAB_RDONLY ;
 TYPE_1__* Paddr_to_map (struct ps_prochandle*,int ) ;
 struct ps_prochandle* dt_proc_grab (TYPE_2__*,int ,int,int ) ;
 int dt_proc_lock (TYPE_2__*,struct ps_prochandle*) ;
 int dt_proc_release (TYPE_2__*,struct ps_prochandle*) ;
 int dt_proc_unlock (TYPE_2__*,struct ps_prochandle*) ;

__attribute__((used)) static void
dt_aggregate_umod(dtrace_hdl_t *dtp, uint64_t *data)
{
 uint64_t pid = data[0];
 uint64_t *pc = &data[1];
 struct ps_prochandle *P;
 const prmap_t *map;

 if (dtp->dt_vector != ((void*)0))
  return;

 if ((P = dt_proc_grab(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE, 0)) == ((void*)0))
  return;

 dt_proc_lock(dtp, P);

 if ((map = Paddr_to_map(P, *pc)) != ((void*)0))
  *pc = map->pr_vaddr;

 dt_proc_unlock(dtp, P);
 dt_proc_release(dtp, P);
}
