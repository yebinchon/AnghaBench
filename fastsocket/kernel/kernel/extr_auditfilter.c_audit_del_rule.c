
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct audit_watch {int dummy; } ;
struct audit_tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ listnr; int list; struct audit_tree* tree; struct audit_watch* watch; } ;
struct audit_entry {int rcu; TYPE_1__ rule; int list; } ;


 scalar_t__ AUDIT_FILTER_TYPE ;
 scalar_t__ AUDIT_FILTER_USER ;
 int ENOENT ;
 int LIST_HEAD (int ) ;
 int audit_filter_mutex ;
 struct audit_entry* audit_find_rule (struct audit_entry*,struct list_head**) ;
 int audit_free_rule_rcu ;
 int audit_inotify_unregister (int *) ;
 int audit_match_signal (struct audit_entry*) ;
 int audit_n_rules ;
 int audit_put_tree (struct audit_tree*) ;
 int audit_put_watch (struct audit_watch*) ;
 int audit_remove_tree_rule (TYPE_1__*) ;
 int audit_remove_watch_rule (TYPE_1__*,int *) ;
 int audit_signals ;
 int call_rcu (int *,int ) ;
 int inotify_list ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int audit_del_rule(struct audit_entry *entry)
{
 struct audit_entry *e;
 struct audit_watch *watch = entry->rule.watch;
 struct audit_tree *tree = entry->rule.tree;
 struct list_head *list;
 LIST_HEAD(inotify_list);
 int ret = 0;
 mutex_lock(&audit_filter_mutex);
 e = audit_find_rule(entry, &list);
 if (!e) {
  mutex_unlock(&audit_filter_mutex);
  ret = -ENOENT;
  goto out;
 }

 if (e->rule.watch)
  audit_remove_watch_rule(&e->rule, &inotify_list);

 if (e->rule.tree)
  audit_remove_tree_rule(&e->rule);

 list_del_rcu(&e->list);
 list_del(&e->rule.list);
 call_rcu(&e->rcu, audit_free_rule_rcu);
 mutex_unlock(&audit_filter_mutex);

 if (!list_empty(&inotify_list))
  audit_inotify_unregister(&inotify_list);

out:
 if (watch)
  audit_put_watch(watch);
 if (tree)
  audit_put_tree(tree);

 return ret;
}
