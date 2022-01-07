
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dentry {int dummy; } ;


 unsigned long D_HASHBITS ;
 unsigned long D_HASHMASK ;
 unsigned long GOLDEN_RATIO_PRIME ;
 unsigned long L1_CACHE_BYTES ;
 struct hlist_head* dentry_hashtable ;

__attribute__((used)) static inline struct hlist_head *d_hash(struct dentry *parent,
     unsigned long hash)
{
 hash += ((unsigned long) parent ^ GOLDEN_RATIO_PRIME) / L1_CACHE_BYTES;
 hash = hash ^ ((hash ^ GOLDEN_RATIO_PRIME) >> D_HASHBITS);
 return dentry_hashtable + (hash & D_HASHMASK);
}
