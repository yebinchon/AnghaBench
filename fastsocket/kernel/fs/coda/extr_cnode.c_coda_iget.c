
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; unsigned long i_ino; } ;
struct coda_vattr {int dummy; } ;
struct coda_inode_info {scalar_t__ c_mapcount; } ;
struct CodaFid {int dummy; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 struct coda_inode_info* ITOC (struct inode*) ;
 int I_NEW ;
 unsigned long coda_f2i (struct CodaFid*) ;
 int coda_fill_inode (struct inode*,struct coda_vattr*) ;
 int coda_set_inode ;
 int coda_test_inode ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct CodaFid*) ;
 int unlock_new_inode (struct inode*) ;

struct inode * coda_iget(struct super_block * sb, struct CodaFid * fid,
    struct coda_vattr * attr)
{
 struct inode *inode;
 struct coda_inode_info *cii;
 unsigned long hash = coda_f2i(fid);

 inode = iget5_locked(sb, hash, coda_test_inode, coda_set_inode, fid);

 if (!inode)
  return ERR_PTR(-ENOMEM);

 if (inode->i_state & I_NEW) {
  cii = ITOC(inode);

  inode->i_ino = hash;
  cii->c_mapcount = 0;
  unlock_new_inode(inode);
 }


 coda_fill_inode(inode, attr);
 return inode;
}
