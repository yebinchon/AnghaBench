
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_delayed_root {int items; int wait; } ;


 scalar_t__ BTRFS_DELAYED_BACKGROUND ;
 scalar_t__ BTRFS_DELAYED_WRITEBACK ;
 int HZ ;
 scalar_t__ atomic_read (int *) ;
 struct btrfs_delayed_root* btrfs_get_delayed_root (struct btrfs_root*) ;
 int btrfs_wq_run_delayed_node (struct btrfs_delayed_root*,struct btrfs_root*,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

void btrfs_balance_delayed_items(struct btrfs_root *root)
{
 struct btrfs_delayed_root *delayed_root;

 delayed_root = btrfs_get_delayed_root(root);

 if (atomic_read(&delayed_root->items) < BTRFS_DELAYED_BACKGROUND)
  return;

 if (atomic_read(&delayed_root->items) >= BTRFS_DELAYED_WRITEBACK) {
  int ret;
  ret = btrfs_wq_run_delayed_node(delayed_root, root, 1);
  if (ret)
   return;

  wait_event_interruptible_timeout(
    delayed_root->wait,
    (atomic_read(&delayed_root->items) <
     BTRFS_DELAYED_BACKGROUND),
    HZ);
  return;
 }

 btrfs_wq_run_delayed_node(delayed_root, root, 0);
}
