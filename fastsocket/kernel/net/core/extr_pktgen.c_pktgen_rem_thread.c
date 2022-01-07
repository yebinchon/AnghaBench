
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktgen_thread {int th_list; TYPE_1__* tsk; } ;
struct TYPE_2__ {int comm; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pg_proc_dir ;
 int pktgen_thread_lock ;
 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static void pktgen_rem_thread(struct pktgen_thread *t)
{


 remove_proc_entry(t->tsk->comm, pg_proc_dir);

 mutex_lock(&pktgen_thread_lock);

 list_del(&t->th_list);

 mutex_unlock(&pktgen_thread_lock);
}
