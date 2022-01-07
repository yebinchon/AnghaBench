
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct audit_watch {int rules; struct audit_parent* parent; } ;
struct audit_parent {int ilist; int wdata; int watches; } ;
struct audit_krule {int rlist; struct audit_watch* watch; } ;


 int audit_remove_watch (struct audit_watch*) ;
 int list_add (int *,struct list_head*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ pin_inotify_watch (int *) ;

void audit_remove_watch_rule(struct audit_krule *krule, struct list_head *list)
{
 struct audit_watch *watch = krule->watch;
 struct audit_parent *parent = watch->parent;

 list_del(&krule->rlist);

 if (list_empty(&watch->rules)) {
  audit_remove_watch(watch);

  if (list_empty(&parent->watches)) {







   if (pin_inotify_watch(&parent->wdata))
    list_add(&parent->ilist, list);
  }
 }
}
