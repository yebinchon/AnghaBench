
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct freezer {struct cgroup_subsys_state css; int state; int lock; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int CGROUP_THAWED ;
 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct freezer* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct cgroup_subsys_state *freezer_create(struct cgroup_subsys *ss,
        struct cgroup *cgroup)
{
 struct freezer *freezer;

 freezer = kzalloc(sizeof(struct freezer), GFP_KERNEL);
 if (!freezer)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&freezer->lock);
 freezer->state = CGROUP_THAWED;
 return &freezer->css;
}
