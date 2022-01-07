
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_cgroup {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 struct ns_cgroup* cgroup_to_ns (struct cgroup*) ;
 int kfree (struct ns_cgroup*) ;

__attribute__((used)) static void ns_destroy(struct cgroup_subsys *ss,
   struct cgroup *cgroup)
{
 struct ns_cgroup *ns_cgroup;

 ns_cgroup = cgroup_to_ns(cgroup);
 kfree(ns_cgroup);
}
