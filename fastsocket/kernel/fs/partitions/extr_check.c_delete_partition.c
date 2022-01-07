
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int rcu_head; int holder_dir; } ;
struct gendisk {struct disk_part_tbl* part_tbl; } ;
struct disk_part_tbl {int len; struct hd_struct* last_lookup; struct hd_struct** part; } ;


 int blk_free_devt (int ) ;
 int call_rcu (int *,int ) ;
 int delete_partition_rcu_cb ;
 int device_del (int ) ;
 int kobject_put (int ) ;
 int part_devt (struct hd_struct*) ;
 int part_to_dev (struct hd_struct*) ;
 int rcu_assign_pointer (struct hd_struct*,int *) ;

void delete_partition(struct gendisk *disk, int partno)
{
 struct disk_part_tbl *ptbl = disk->part_tbl;
 struct hd_struct *part;

 if (partno >= ptbl->len)
  return;

 part = ptbl->part[partno];
 if (!part)
  return;

 rcu_assign_pointer(ptbl->part[partno], ((void*)0));
 rcu_assign_pointer(ptbl->last_lookup, ((void*)0));
 kobject_put(part->holder_dir);
 device_del(part_to_dev(part));
 blk_free_devt(part_devt(part));

 call_rcu(&part->rcu_head, delete_partition_rcu_cb);
}
