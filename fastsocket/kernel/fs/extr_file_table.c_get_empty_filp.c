
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int fu_list; } ;
struct file {int f_lock; int f_cred; TYPE_2__ f_owner; int f_count; TYPE_1__ f_u; } ;
struct cred {int dummy; } ;
struct TYPE_6__ {long max_files; } ;


 int CAP_SYS_ADMIN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_long_set (int *,int) ;
 int capable (int ) ;
 struct cred* current_cred () ;
 int eventpoll_init_file (struct file*) ;
 int file_free (struct file*) ;
 TYPE_3__ files_stat ;
 int filp_cachep ;
 int get_cred (struct cred const*) ;
 int get_max_files () ;
 long get_nr_files () ;
 struct file* kmem_cache_zalloc (int ,int ) ;
 int nr_files ;
 int percpu_counter_inc (int *) ;
 scalar_t__ percpu_counter_sum_positive (int *) ;
 int pr_info (char*,int ) ;
 int rwlock_init (int *) ;
 scalar_t__ security_file_alloc (struct file*) ;
 int spin_lock_init (int *) ;

struct file *get_empty_filp(void)
{
 const struct cred *cred = current_cred();
 static long old_max;
 struct file * f;




 if (get_nr_files() >= files_stat.max_files && !capable(CAP_SYS_ADMIN)) {




  if (percpu_counter_sum_positive(&nr_files) >= files_stat.max_files)
   goto over;
 }

 f = kmem_cache_zalloc(filp_cachep, GFP_KERNEL);
 if (f == ((void*)0))
  goto fail;

 percpu_counter_inc(&nr_files);
 if (security_file_alloc(f))
  goto fail_sec;

 INIT_LIST_HEAD(&f->f_u.fu_list);
 atomic_long_set(&f->f_count, 1);
 rwlock_init(&f->f_owner.lock);
 f->f_cred = get_cred(cred);
 spin_lock_init(&f->f_lock);
 eventpoll_init_file(f);

 return f;

over:

 if (get_nr_files() > old_max) {
  pr_info("VFS: file-max limit %lu reached\n", get_max_files());
  old_max = get_nr_files();
 }
 goto fail;

fail_sec:
 file_free(f);
fail:
 return ((void*)0);
}
