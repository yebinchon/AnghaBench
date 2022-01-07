
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int * ids; scalar_t__ used_sems; int sc_semmni; int sc_semopm; int sc_semmns; int sc_semmsl; } ;


 size_t IPC_SEM_IDS ;
 int SEMMNI ;
 int SEMMNS ;
 int SEMMSL ;
 int SEMOPM ;
 int ipc_init_ids (int *) ;

void sem_init_ns(struct ipc_namespace *ns)
{
 ns->sc_semmsl = SEMMSL;
 ns->sc_semmns = SEMMNS;
 ns->sc_semopm = SEMOPM;
 ns->sc_semmni = SEMMNI;
 ns->used_sems = 0;
 ipc_init_ids(&ns->ids[IPC_SEM_IDS]);
}
