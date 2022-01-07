
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_device {int spinlock; int cm_id_list; } ;
struct rds_iw_cm_id {int list; struct rdma_cm_id* cm_id; } ;
struct rdma_cm_id {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rds_iw_cm_id* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rds_iw_add_cm_id(struct rds_iw_device *rds_iwdev, struct rdma_cm_id *cm_id)
{
 struct rds_iw_cm_id *i_cm_id;

 i_cm_id = kmalloc(sizeof *i_cm_id, GFP_KERNEL);
 if (!i_cm_id)
  return -ENOMEM;

 i_cm_id->cm_id = cm_id;

 spin_lock_irq(&rds_iwdev->spinlock);
 list_add_tail(&i_cm_id->list, &rds_iwdev->cm_id_list);
 spin_unlock_irq(&rds_iwdev->spinlock);

 return 0;
}
