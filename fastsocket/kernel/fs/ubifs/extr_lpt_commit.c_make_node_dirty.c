
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int EINVAL ;




 int make_lsave_dirty (struct ubifs_info*,int,int) ;
 int make_ltab_dirty (struct ubifs_info*,int,int) ;
 int make_nnode_dirty (struct ubifs_info*,int,int,int) ;
 int make_pnode_dirty (struct ubifs_info*,int,int,int) ;

__attribute__((used)) static int make_node_dirty(struct ubifs_info *c, int node_type, int node_num,
      int lnum, int offs)
{
 switch (node_type) {
 case 129:
  return make_nnode_dirty(c, node_num, lnum, offs);
 case 128:
  return make_pnode_dirty(c, node_num, lnum, offs);
 case 130:
  return make_ltab_dirty(c, lnum, offs);
 case 131:
  return make_lsave_dirty(c, lnum, offs);
 }
 return -EINVAL;
}
