
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rq {int dummy; } ;
struct cfs_rq {int load_stamp; scalar_t__ min_vruntime; struct rq* rq; int tasks; int tasks_timeline; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;

__attribute__((used)) static void init_cfs_rq(struct cfs_rq *cfs_rq, struct rq *rq)
{
 cfs_rq->tasks_timeline = RB_ROOT;
 INIT_LIST_HEAD(&cfs_rq->tasks);





 cfs_rq->min_vruntime = (u64)(-(1LL << 20));
}
