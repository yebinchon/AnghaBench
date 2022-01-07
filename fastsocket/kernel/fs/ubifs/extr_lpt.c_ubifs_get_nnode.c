
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_nnode {struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {struct ubifs_nnode* nnode; } ;
struct ubifs_info {int dummy; } ;


 struct ubifs_nnode* ERR_PTR (int) ;
 int ubifs_read_nnode (struct ubifs_info*,struct ubifs_nnode*,int) ;

struct ubifs_nnode *ubifs_get_nnode(struct ubifs_info *c,
        struct ubifs_nnode *parent, int iip)
{
 struct ubifs_nbranch *branch;
 struct ubifs_nnode *nnode;
 int err;

 branch = &parent->nbranch[iip];
 nnode = branch->nnode;
 if (nnode)
  return nnode;
 err = ubifs_read_nnode(c, parent, iip);
 if (err)
  return ERR_PTR(err);
 return branch->nnode;
}
