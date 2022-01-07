
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;


 scalar_t__ find_old_idx (struct ubifs_info*,int,int) ;
 int is_idx_node_in_tnc (struct ubifs_info*,union ubifs_key*,int,int,int) ;

__attribute__((used)) static int is_idx_node_in_use(struct ubifs_info *c, union ubifs_key *key,
         int level, int lnum, int offs)
{
 int ret;

 ret = is_idx_node_in_tnc(c, key, level, lnum, offs);
 if (ret < 0)
  return ret;
 if (ret == 0)
  if (find_old_idx(c, lnum, offs))
   return 1;
 return ret;
}
