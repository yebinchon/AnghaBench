
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct ns_cgroup {struct cgroup_subsys_state css; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int capable (int ) ;
 int cgroup_is_descendant (struct cgroup*,int ) ;
 int current ;
 struct ns_cgroup* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *ns_create(struct cgroup_subsys *ss,
      struct cgroup *cgroup)
{
 struct ns_cgroup *ns_cgroup;

 if (!capable(CAP_SYS_ADMIN))
  return ERR_PTR(-EPERM);
 if (!cgroup_is_descendant(cgroup, current))
  return ERR_PTR(-EPERM);

 ns_cgroup = kzalloc(sizeof(*ns_cgroup), GFP_KERNEL);
 if (!ns_cgroup)
  return ERR_PTR(-ENOMEM);
 return &ns_cgroup->css;
}
