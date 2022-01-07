
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rnf_complete; int rnf_error; int rnf_submit; struct mon_reader_text* r_data; struct mon_bus* m_bus; } ;
struct mon_reader_text {struct mon_reader_text* printf_buf; TYPE_1__ r; int * e_slab; int slab_name; int printf_size; int printf_lock; int wait; int e_list; } ;
struct mon_event_text {int dummy; } ;
struct mon_bus {int dummy; } ;
struct inode {struct mon_bus* i_private; } ;
struct file {struct mon_reader_text* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PRINTF_DFL ;
 int SLAB_NAME_SZ ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mon_reader_text*) ;
 struct mon_reader_text* kmalloc (int ,int ) ;
 int * kmem_cache_create (int ,int,int,int ,int ) ;
 struct mon_reader_text* kzalloc (int,int ) ;
 int mon_lock ;
 int mon_reader_add (struct mon_bus*,TYPE_1__*) ;
 int mon_text_complete ;
 int mon_text_ctor ;
 int mon_text_error ;
 int mon_text_submit ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (int ,int ,char*,struct mon_reader_text*) ;

__attribute__((used)) static int mon_text_open(struct inode *inode, struct file *file)
{
 struct mon_bus *mbus;
 struct mon_reader_text *rp;
 int rc;

 mutex_lock(&mon_lock);
 mbus = inode->i_private;

 rp = kzalloc(sizeof(struct mon_reader_text), GFP_KERNEL);
 if (rp == ((void*)0)) {
  rc = -ENOMEM;
  goto err_alloc;
 }
 INIT_LIST_HEAD(&rp->e_list);
 init_waitqueue_head(&rp->wait);
 mutex_init(&rp->printf_lock);

 rp->printf_size = PRINTF_DFL;
 rp->printf_buf = kmalloc(rp->printf_size, GFP_KERNEL);
 if (rp->printf_buf == ((void*)0)) {
  rc = -ENOMEM;
  goto err_alloc_pr;
 }

 rp->r.m_bus = mbus;
 rp->r.r_data = rp;
 rp->r.rnf_submit = mon_text_submit;
 rp->r.rnf_error = mon_text_error;
 rp->r.rnf_complete = mon_text_complete;

 snprintf(rp->slab_name, SLAB_NAME_SZ, "mon_text_%p", rp);
 rp->e_slab = kmem_cache_create(rp->slab_name,
     sizeof(struct mon_event_text), sizeof(long), 0,
     mon_text_ctor);
 if (rp->e_slab == ((void*)0)) {
  rc = -ENOMEM;
  goto err_slab;
 }

 mon_reader_add(mbus, &rp->r);

 file->private_data = rp;
 mutex_unlock(&mon_lock);
 return 0;



err_slab:
 kfree(rp->printf_buf);
err_alloc_pr:
 kfree(rp);
err_alloc:
 mutex_unlock(&mon_lock);
 return rc;
}
