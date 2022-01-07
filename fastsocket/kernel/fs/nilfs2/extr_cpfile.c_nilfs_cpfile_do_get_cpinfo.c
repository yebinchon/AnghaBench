
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_cpinfo {scalar_t__ ci_cno; } ;
struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int ssize_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int mi_sem; } ;


 int ENOENT ;
 int KM_USER0 ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int nilfs_checkpoint_invalid (struct nilfs_checkpoint*) ;
 struct nilfs_checkpoint* nilfs_cpfile_block_get_checkpoint (struct inode*,scalar_t__,struct buffer_head*,void*) ;
 int nilfs_cpfile_checkpoint_to_cpinfo (struct inode*,struct nilfs_checkpoint*,struct nilfs_cpinfo*) ;
 int nilfs_cpfile_checkpoints_in_block (struct inode*,scalar_t__,scalar_t__) ;
 int nilfs_cpfile_get_checkpoint_block (struct inode*,scalar_t__,int ,struct buffer_head**) ;
 scalar_t__ nilfs_mdt_cno (struct inode*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t nilfs_cpfile_do_get_cpinfo(struct inode *cpfile, __u64 *cnop,
       void *buf, unsigned cisz, size_t nci)
{
 struct nilfs_checkpoint *cp;
 struct nilfs_cpinfo *ci = buf;
 struct buffer_head *bh;
 size_t cpsz = NILFS_MDT(cpfile)->mi_entry_size;
 __u64 cur_cno = nilfs_mdt_cno(cpfile), cno = *cnop;
 void *kaddr;
 int n, ret;
 int ncps, i;

 if (cno == 0)
  return -ENOENT;
 down_read(&NILFS_MDT(cpfile)->mi_sem);

 for (n = 0; cno < cur_cno && n < nci; cno += ncps) {
  ncps = nilfs_cpfile_checkpoints_in_block(cpfile, cno, cur_cno);
  ret = nilfs_cpfile_get_checkpoint_block(cpfile, cno, 0, &bh);
  if (ret < 0) {
   if (ret != -ENOENT)
    goto out;
   continue;
  }

  kaddr = kmap_atomic(bh->b_page, KM_USER0);
  cp = nilfs_cpfile_block_get_checkpoint(cpfile, cno, bh, kaddr);
  for (i = 0; i < ncps && n < nci; i++, cp = (void *)cp + cpsz) {
   if (!nilfs_checkpoint_invalid(cp)) {
    nilfs_cpfile_checkpoint_to_cpinfo(cpfile, cp,
          ci);
    ci = (void *)ci + cisz;
    n++;
   }
  }
  kunmap_atomic(kaddr, KM_USER0);
  brelse(bh);
 }

 ret = n;
 if (n > 0) {
  ci = (void *)ci - cisz;
  *cnop = ci->ci_cno + 1;
 }

 out:
 up_read(&NILFS_MDT(cpfile)->mi_sem);
 return ret;
}
