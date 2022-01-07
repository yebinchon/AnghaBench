
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {struct btrfs_free_space_ctl* free_ino_pinned; struct btrfs_free_space_ctl* free_ino_ctl; } ;
struct btrfs_free_space_ctl {int unit; int * op; scalar_t__ extents_thresh; int * private; scalar_t__ start; int tree_lock; } ;


 scalar_t__ INIT_THRESHOLD ;
 int free_ino_op ;
 int pinned_free_ino_op ;
 int spin_lock_init (int *) ;

void btrfs_init_free_ino_ctl(struct btrfs_root *root)
{
 struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
 struct btrfs_free_space_ctl *pinned = root->free_ino_pinned;

 spin_lock_init(&ctl->tree_lock);
 ctl->unit = 1;
 ctl->start = 0;
 ctl->private = ((void*)0);
 ctl->op = &free_ino_op;






 ctl->extents_thresh = INIT_THRESHOLD;

 spin_lock_init(&pinned->tree_lock);
 pinned->unit = 1;
 pinned->start = 0;
 pinned->private = ((void*)0);
 pinned->extents_thresh = 0;
 pinned->op = &pinned_free_ino_op;
}
