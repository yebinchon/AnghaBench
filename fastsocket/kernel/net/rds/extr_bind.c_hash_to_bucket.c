
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hlist_head {int dummy; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 int BIND_HASH_SIZE ;
 struct hlist_head* bind_hash_table ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static struct hlist_head *hash_to_bucket(__be32 addr, __be16 port)
{
 return bind_hash_table + (jhash_2words((u32)addr, (u32)port, 0) &
      (BIND_HASH_SIZE - 1));
}
