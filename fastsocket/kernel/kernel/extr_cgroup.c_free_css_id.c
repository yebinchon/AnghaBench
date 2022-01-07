
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_id {int rcu_head; int id; struct css_id* css; } ;
struct cgroup_subsys_state {struct css_id* id; } ;
struct cgroup_subsys {int id_lock; int idr; int use_id; } ;


 int BUG_ON (int) ;
 int __free_css_id_cb ;
 int call_rcu (int *,int ) ;
 int idr_remove (int *,int ) ;
 int rcu_assign_pointer (struct css_id*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void free_css_id(struct cgroup_subsys *ss, struct cgroup_subsys_state *css)
{
 struct css_id *id = css->id;

 if (!id)
  return;

 BUG_ON(!ss->use_id);

 rcu_assign_pointer(id->css, ((void*)0));
 rcu_assign_pointer(css->id, ((void*)0));
 spin_lock(&ss->id_lock);
 idr_remove(&ss->idr, id->id);
 spin_unlock(&ss->id_lock);
 call_rcu(&id->rcu_head, __free_css_id_cb);
}
