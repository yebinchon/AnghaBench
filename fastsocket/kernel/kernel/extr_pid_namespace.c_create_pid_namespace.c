
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_namespace {int level; TYPE_1__* pidmap; int proc_work; int parent; int kref; int proc_inum; int * pid_cachep; } ;
struct TYPE_2__ {int page; int nr_free; } ;


 scalar_t__ BITS_PER_PAGE ;
 int ENOMEM ;
 struct pid_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int PAGE_SIZE ;
 int PIDMAP_ENTRIES ;
 int atomic_set (int *,scalar_t__) ;
 int * create_pid_cachep (unsigned int) ;
 int get_pid_ns (struct pid_namespace*) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct pid_namespace*) ;
 struct pid_namespace* kmem_cache_zalloc (int ,int ) ;
 int kref_init (int *) ;
 int kzalloc (int ,int ) ;
 int pid_ns_cachep ;
 int proc_alloc_inum (int *) ;
 int proc_cleanup_work ;
 int set_bit (int ,int ) ;

__attribute__((used)) static struct pid_namespace *create_pid_namespace(struct pid_namespace *parent_pid_ns)
{
 struct pid_namespace *ns;
 unsigned int level = parent_pid_ns->level + 1;
 int i, err = -ENOMEM;

 ns = kmem_cache_zalloc(pid_ns_cachep, GFP_KERNEL);
 if (ns == ((void*)0))
  goto out;

 ns->pidmap[0].page = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!ns->pidmap[0].page)
  goto out_free;

 ns->pid_cachep = create_pid_cachep(level + 1);
 if (ns->pid_cachep == ((void*)0))
  goto out_free_map;

 err = proc_alloc_inum(&ns->proc_inum);
 if (err)
  goto out_free_map;

 kref_init(&ns->kref);
 ns->level = level;
 ns->parent = get_pid_ns(parent_pid_ns);
 INIT_WORK(&ns->proc_work, proc_cleanup_work);

 set_bit(0, ns->pidmap[0].page);
 atomic_set(&ns->pidmap[0].nr_free, BITS_PER_PAGE - 1);

 for (i = 1; i < PIDMAP_ENTRIES; i++)
  atomic_set(&ns->pidmap[i].nr_free, BITS_PER_PAGE);

 return ns;

out_free_map:
 kfree(ns->pidmap[0].page);
out_free:
 kmem_cache_free(pid_ns_cachep, ns);
out:
 return ERR_PTR(err);
}
