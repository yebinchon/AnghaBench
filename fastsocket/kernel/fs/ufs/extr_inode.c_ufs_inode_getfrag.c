
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ufs_sb_private_info {scalar_t__ s_sbbase; unsigned int s_fpb; } ;
struct ufs_inode_info {scalar_t__ i_lastfrag; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_ctime; int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 int CURRENT_TIME_SEC ;
 int ENOSPC ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int UFSD (char*,unsigned long long,...) ;
 struct ufs_inode_info* UFS_I (struct inode*) ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 struct buffer_head* sb_getblk (struct super_block*,scalar_t__) ;
 scalar_t__ ufs_data_ptr_to_cpu (struct super_block*,void*) ;
 unsigned int ufs_fragnum (scalar_t__) ;
 scalar_t__ ufs_fragstoblks (scalar_t__) ;
 void* ufs_get_direct_data_ptr (struct ufs_sb_private_info*,struct ufs_inode_info*,scalar_t__) ;
 scalar_t__ ufs_new_fragments (struct inode*,void*,scalar_t__,scalar_t__,unsigned int,int*,struct page*) ;
 int ufs_sync_inode (struct inode*) ;

__attribute__((used)) static struct buffer_head *
ufs_inode_getfrag(struct inode *inode, u64 fragment,
    sector_t new_fragment, unsigned int required, int *err,
    long *phys, int *new, struct page *locked_page)
{
 struct ufs_inode_info *ufsi = UFS_I(inode);
 struct super_block *sb = inode->i_sb;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 struct buffer_head * result;
 unsigned blockoff, lastblockoff;
 u64 tmp, goal, lastfrag, block, lastblock;
 void *p, *p2;

 UFSD("ENTER, ino %lu, fragment %llu, new_fragment %llu, required %u, "
      "metadata %d\n", inode->i_ino, (unsigned long long)fragment,
      (unsigned long long)new_fragment, required, !phys);






 block = ufs_fragstoblks (fragment);
 blockoff = ufs_fragnum (fragment);
 p = ufs_get_direct_data_ptr(uspi, ufsi, block);

 goal = 0;

repeat:
 tmp = ufs_data_ptr_to_cpu(sb, p);

 lastfrag = ufsi->i_lastfrag;
 if (tmp && fragment < lastfrag) {
  if (!phys) {
   result = sb_getblk(sb, uspi->s_sbbase + tmp + blockoff);
   if (tmp == ufs_data_ptr_to_cpu(sb, p)) {
    UFSD("EXIT, result %llu\n",
         (unsigned long long)tmp + blockoff);
    return result;
   }
   brelse (result);
   goto repeat;
  } else {
   *phys = uspi->s_sbbase + tmp + blockoff;
   return ((void*)0);
  }
 }

 lastblock = ufs_fragstoblks (lastfrag);
 lastblockoff = ufs_fragnum (lastfrag);



 if (lastblock < block) {



  if (lastblockoff) {
   p2 = ufs_get_direct_data_ptr(uspi, ufsi, lastblock);
   tmp = ufs_new_fragments(inode, p2, lastfrag,
      ufs_data_ptr_to_cpu(sb, p2),
      uspi->s_fpb - lastblockoff,
      err, locked_page);
   if (!tmp) {
    if (lastfrag != ufsi->i_lastfrag)
     goto repeat;
    else
     return ((void*)0);
   }
   lastfrag = ufsi->i_lastfrag;

  }
  tmp = ufs_data_ptr_to_cpu(sb,
      ufs_get_direct_data_ptr(uspi, ufsi,
         lastblock));
  if (tmp)
   goal = tmp + uspi->s_fpb;
  tmp = ufs_new_fragments (inode, p, fragment - blockoff,
      goal, required + blockoff,
      err,
      phys != ((void*)0) ? locked_page : ((void*)0));
 } else if (lastblock == block) {



  tmp = ufs_new_fragments(inode, p, fragment -
     (blockoff - lastblockoff),
     ufs_data_ptr_to_cpu(sb, p),
     required + (blockoff - lastblockoff),
     err, phys != ((void*)0) ? locked_page : ((void*)0));
 } else {



  if (block) {
   tmp = ufs_data_ptr_to_cpu(sb,
       ufs_get_direct_data_ptr(uspi, ufsi, block - 1));
   if (tmp)
    goal = tmp + uspi->s_fpb;
  }
  tmp = ufs_new_fragments(inode, p, fragment - blockoff,
     goal, uspi->s_fpb, err,
     phys != ((void*)0) ? locked_page : ((void*)0));
 }
 if (!tmp) {
  if ((!blockoff && ufs_data_ptr_to_cpu(sb, p)) ||
      (blockoff && lastfrag != ufsi->i_lastfrag))
   goto repeat;
  *err = -ENOSPC;
  return ((void*)0);
 }

 if (!phys) {
  result = sb_getblk(sb, uspi->s_sbbase + tmp + blockoff);
 } else {
  *phys = uspi->s_sbbase + tmp + blockoff;
  result = ((void*)0);
  *err = 0;
  *new = 1;
 }

 inode->i_ctime = CURRENT_TIME_SEC;
 if (IS_SYNC(inode))
  ufs_sync_inode (inode);
 mark_inode_dirty(inode);
 UFSD("EXIT, result %llu\n", (unsigned long long)tmp + blockoff);
 return result;
}
