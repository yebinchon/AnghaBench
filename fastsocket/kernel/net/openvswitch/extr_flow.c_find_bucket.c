
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hlist_head {int dummy; } ;
struct flow_table {int n_buckets; int buckets; int hash_seed; } ;


 struct hlist_head* flex_array_get (int ,int) ;
 int jhash_1word (int,int ) ;

__attribute__((used)) static struct hlist_head *find_bucket(struct flow_table *table, u32 hash)
{
 hash = jhash_1word(hash, table->hash_seed);
 return flex_array_get(table->buckets,
    (hash & (table->n_buckets - 1)));
}
