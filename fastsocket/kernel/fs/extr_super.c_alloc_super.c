
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_operations {int dummy; } ;
struct TYPE_2__ {int dqptr_sem; int dqonoff_mutex; int dqio_mutex; } ;
struct super_block {int s_count; int s_time_gran; struct super_operations const* s_op; int s_qcop; int dq_op; int s_maxbytes; int s_wait_unfrozen; TYPE_1__ s_dquot; int s_vfs_rename_mutex; int s_active; int s_umount; int s_lock; int s_dentry_lru; int s_inodes; int s_anon; int s_instances; int s_files; } ;
struct file_system_type {int s_lock_key; int s_umount_key; } ;


 int GFP_USER ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_NON_LFS ;
 int SINGLE_DEPTH_NESTING ;
 int atomic_set (int *,int) ;
 int destroy_sb_writers (struct super_block*) ;
 int down_write_nested (int *,int ) ;
 int init_rwsem (int *) ;
 scalar_t__ init_sb_writers (struct super_block*,struct file_system_type*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct super_block*) ;
 struct super_block* kzalloc (int,int ) ;
 int lockdep_set_class (int *,int *) ;
 int mutex_init (int *) ;
 int sb_dquot_ops ;
 int sb_quotactl_ops ;
 scalar_t__ security_sb_alloc (struct super_block*) ;
 int security_sb_free (struct super_block*) ;

__attribute__((used)) static struct super_block *alloc_super(struct file_system_type *type)
{
 struct super_block *s = kzalloc(sizeof(struct super_block), GFP_USER);
 static const struct super_operations default_op;

 if (s) {
  if (security_sb_alloc(s)) {




   kfree(s);
   s = ((void*)0);
   goto out;
  }
  INIT_LIST_HEAD(&s->s_files);
  if (init_sb_writers(s, type))
   goto err_out;
  INIT_LIST_HEAD(&s->s_instances);
  INIT_HLIST_HEAD(&s->s_anon);
  INIT_LIST_HEAD(&s->s_inodes);
  INIT_LIST_HEAD(&s->s_dentry_lru);
  init_rwsem(&s->s_umount);
  mutex_init(&s->s_lock);
  lockdep_set_class(&s->s_umount, &type->s_umount_key);





  lockdep_set_class(&s->s_lock, &type->s_lock_key);
  down_write_nested(&s->s_umount, SINGLE_DEPTH_NESTING);
  s->s_count = 1;
  atomic_set(&s->s_active, 1);
  mutex_init(&s->s_vfs_rename_mutex);
  mutex_init(&s->s_dquot.dqio_mutex);
  mutex_init(&s->s_dquot.dqonoff_mutex);
  init_rwsem(&s->s_dquot.dqptr_sem);
  init_waitqueue_head(&s->s_wait_unfrozen);
  s->s_maxbytes = MAX_NON_LFS;
  s->dq_op = sb_dquot_ops;
  s->s_qcop = sb_quotactl_ops;
  s->s_op = &default_op;
  s->s_time_gran = 1000000000;
 }
out:
 return s;
err_out:
 security_sb_free(s);
 destroy_sb_writers(s);
 kfree(s);
 s = ((void*)0);
 goto out;
}
