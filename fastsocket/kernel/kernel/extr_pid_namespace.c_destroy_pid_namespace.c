
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_namespace {TYPE_1__* pidmap; int proc_inum; } ;
struct TYPE_2__ {int page; } ;


 int PIDMAP_ENTRIES ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct pid_namespace*) ;
 int pid_ns_cachep ;
 int proc_free_inum (int ) ;

__attribute__((used)) static void destroy_pid_namespace(struct pid_namespace *ns)
{
 int i;

 proc_free_inum(ns->proc_inum);
 for (i = 0; i < PIDMAP_ENTRIES; i++)
  kfree(ns->pidmap[i].page);
 kmem_cache_free(pid_ns_cachep, ns);
}
