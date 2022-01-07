
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int event_list_lock; int event_list; int pidlist_mutex; int pidlists; int release_list; int css_sets; int children; int sibling; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_cgroup_housekeeping(struct cgroup *cgrp)
{
 INIT_LIST_HEAD(&cgrp->sibling);
 INIT_LIST_HEAD(&cgrp->children);
 INIT_LIST_HEAD(&cgrp->css_sets);
 INIT_LIST_HEAD(&cgrp->release_list);
 INIT_LIST_HEAD(&cgrp->pidlists);
 mutex_init(&cgrp->pidlist_mutex);
 INIT_LIST_HEAD(&cgrp->event_list);
 spin_lock_init(&cgrp->event_list_lock);
}
