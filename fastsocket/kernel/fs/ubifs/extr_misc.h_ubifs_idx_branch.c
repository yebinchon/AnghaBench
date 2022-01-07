
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int key_len; } ;
struct ubifs_idx_node {scalar_t__ branches; } ;
struct ubifs_branch {int dummy; } ;


 int UBIFS_BRANCH_SZ ;

__attribute__((used)) static inline
struct ubifs_branch *ubifs_idx_branch(const struct ubifs_info *c,
          const struct ubifs_idx_node *idx,
          int bnum)
{
 return (struct ubifs_branch *)((void *)idx->branches +
           (UBIFS_BRANCH_SZ + c->key_len) * bnum);
}
