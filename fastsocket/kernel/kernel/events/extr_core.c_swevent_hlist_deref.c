
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swevent_htable {int swevent_hlist; } ;
struct swevent_hlist {int dummy; } ;


 struct swevent_hlist* rcu_dereference (int ) ;

__attribute__((used)) static inline struct swevent_hlist *
swevent_hlist_deref(struct swevent_htable *swhash)
{
 return rcu_dereference(swhash->swevent_hlist);
}
