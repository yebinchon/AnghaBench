
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nl_pid_hash {size_t mask; int rnd; struct hlist_head* table; } ;
struct hlist_head {int dummy; } ;


 size_t jhash_1word (int ,int ) ;

__attribute__((used)) static struct hlist_head *nl_pid_hashfn(struct nl_pid_hash *hash, u32 pid)
{
 return &hash->table[jhash_1word(pid, hash->rnd) & hash->mask];
}
