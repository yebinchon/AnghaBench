
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; } ;
struct ubifs_info {int dummy; } ;


 struct ubifs_znode* ubifs_load_znode (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_znode*,int) ;

__attribute__((used)) static struct ubifs_znode *get_znode(struct ubifs_info *c,
         struct ubifs_znode *znode, int n)
{
 struct ubifs_zbranch *zbr;

 zbr = &znode->zbranch[n];
 if (zbr->znode)
  znode = zbr->znode;
 else
  znode = ubifs_load_znode(c, zbr, znode, n);
 return znode;
}
