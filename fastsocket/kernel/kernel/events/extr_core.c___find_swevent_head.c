
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
typedef int u32 ;
struct swevent_hlist {struct hlist_head* heads; } ;
struct hlist_head {int dummy; } ;


 size_t swevent_hash (size_t,int ) ;

__attribute__((used)) static inline struct hlist_head *
__find_swevent_head(struct swevent_hlist *hlist, u64 type, u32 event_id)
{
 u64 hash = swevent_hash(type, event_id);

 return &hlist->heads[hash];
}
