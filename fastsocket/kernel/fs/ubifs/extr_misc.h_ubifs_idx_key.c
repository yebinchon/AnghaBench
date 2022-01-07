
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct ubifs_idx_node {scalar_t__ branches; } ;
struct ubifs_branch {scalar_t__ key; } ;



__attribute__((used)) static inline void *ubifs_idx_key(const struct ubifs_info *c,
      const struct ubifs_idx_node *idx)
{
 return (void *)((struct ubifs_branch *)idx->branches)->key;
}
