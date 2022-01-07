
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int nnode_sz; int pnode_sz; int ltab_sz; int lsave_sz; } ;







__attribute__((used)) static int get_lpt_node_len(const struct ubifs_info *c, int node_type)
{
 switch (node_type) {
 case 129:
  return c->nnode_sz;
 case 128:
  return c->pnode_sz;
 case 130:
  return c->ltab_sz;
 case 131:
  return c->lsave_sz;
 }
 return 0;
}
