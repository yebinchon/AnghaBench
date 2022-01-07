
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct swevent_htable {int swevent_hlist; } ;
struct swevent_hlist {int dummy; } ;
struct hlist_head {int dummy; } ;


 struct hlist_head* __find_swevent_head (struct swevent_hlist*,int ,int ) ;
 struct swevent_hlist* rcu_dereference (int ) ;

__attribute__((used)) static inline struct hlist_head *
find_swevent_head_rcu(struct swevent_htable *swhash, u64 type, u32 event_id)
{
 struct swevent_hlist *hlist;

 hlist = rcu_dereference(swhash->swevent_hlist);
 if (!hlist)
  return ((void*)0);

 return __find_swevent_head(hlist, type, event_id);
}
