
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {scalar_t__ type; int dev; int pmu_disable_count; int entry; } ;


 scalar_t__ PERF_TYPE_MAX ;
 int device_del (int ) ;
 int free_percpu (int ) ;
 int free_pmu_context (struct pmu*) ;
 int idr_remove (int *,scalar_t__) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmu_idr ;
 int pmus_lock ;
 int pmus_srcu ;
 int put_device (int ) ;
 int synchronize_rcu () ;
 int synchronize_srcu (int *) ;

void perf_pmu_unregister(struct pmu *pmu)
{
 mutex_lock(&pmus_lock);
 list_del_rcu(&pmu->entry);
 mutex_unlock(&pmus_lock);





 synchronize_srcu(&pmus_srcu);
 synchronize_rcu();

 free_percpu(pmu->pmu_disable_count);
 if (pmu->type >= PERF_TYPE_MAX)
  idr_remove(&pmu_idr, pmu->type);
 device_del(pmu->dev);
 put_device(pmu->dev);
 free_pmu_context(pmu);
}
