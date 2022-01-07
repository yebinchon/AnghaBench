
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_eventfd_list {int list; struct eventfd_ctx* eventfd; } ;
struct mem_cgroup {int under_oom; int oom_notify; } ;
struct eventfd_ctx {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEMFILE_TYPE (int ) ;
 int _OOM_TYPE ;
 scalar_t__ atomic_read (int *) ;
 int eventfd_signal (struct eventfd_ctx*,int) ;
 struct mem_cgroup_eventfd_list* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int memcg_oom_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mem_cgroup_oom_register_event(struct cgroup *cgrp,
 struct cftype *cft, struct eventfd_ctx *eventfd, const char *args)
{
 struct mem_cgroup *memcg = mem_cgroup_from_cont(cgrp);
 struct mem_cgroup_eventfd_list *event;
 int type = MEMFILE_TYPE(cft->private);

 BUG_ON(type != _OOM_TYPE);
 event = kmalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return -ENOMEM;

 spin_lock(&memcg_oom_lock);

 event->eventfd = eventfd;
 list_add(&event->list, &memcg->oom_notify);


 if (atomic_read(&memcg->under_oom))
  eventfd_signal(eventfd, 1);
 spin_unlock(&memcg_oom_lock);

 return 0;
}
