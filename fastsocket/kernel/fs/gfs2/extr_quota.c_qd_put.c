
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_quota_data {int qd_reclaim; int qd_count; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int qd_lru_count ;
 int qd_lru_list ;
 int qd_lru_lock ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qd_put(struct gfs2_quota_data *qd)
{
 if (atomic_dec_and_lock(&qd->qd_count, &qd_lru_lock)) {

  list_add_tail(&qd->qd_reclaim, &qd_lru_list);
  atomic_inc(&qd_lru_count);
  spin_unlock(&qd_lru_lock);
 }
}
