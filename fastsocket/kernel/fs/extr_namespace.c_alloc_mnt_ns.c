
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {scalar_t__ event; int poll; int list; int * root; int count; int seq; int proc_inum; } ;


 int ENOMEM ;
 struct mnt_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic64_add_return (int,int *) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mnt_namespace*) ;
 struct mnt_namespace* kmalloc (int,int ) ;
 int mnt_ns_seq ;
 int proc_alloc_inum (int *) ;

__attribute__((used)) static struct mnt_namespace *alloc_mnt_ns(void)
{
 struct mnt_namespace *new_ns;
 int ret;

 new_ns = kmalloc(sizeof(struct mnt_namespace), GFP_KERNEL);
 if (!new_ns)
  return ERR_PTR(-ENOMEM);
 ret = proc_alloc_inum(&new_ns->proc_inum);
 if (ret) {
  kfree(new_ns);
  return ERR_PTR(ret);
 }
 new_ns->seq = atomic64_add_return(1, &mnt_ns_seq);
 atomic_set(&new_ns->count, 1);
 new_ns->root = ((void*)0);
 INIT_LIST_HEAD(&new_ns->list);
 init_waitqueue_head(&new_ns->poll);
 new_ns->event = 0;
 return new_ns;
}
