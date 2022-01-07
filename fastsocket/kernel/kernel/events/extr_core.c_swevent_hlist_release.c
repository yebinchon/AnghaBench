
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swevent_htable {int swevent_hlist; } ;
struct swevent_hlist {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int rcu_assign_pointer (int ,int *) ;
 struct swevent_hlist* swevent_hlist_deref (struct swevent_htable*) ;
 int swevent_hlist_free ;

__attribute__((used)) static void swevent_hlist_release(struct swevent_htable *swhash)
{
 struct swevent_hlist *hlist = swevent_hlist_deref(swhash);

 if (!hlist)
  return;

 rcu_assign_pointer(swhash->swevent_hlist, ((void*)0));
 call_rcu(&hlist->rcu_head, swevent_hlist_free);
}
