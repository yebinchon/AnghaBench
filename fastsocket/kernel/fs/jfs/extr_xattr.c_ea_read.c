
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct metapage {int data; } ;
struct jfs_sb_info {int l2nbperpage; scalar_t__ nbperpage; } ;
struct TYPE_4__ {int flag; } ;
struct jfs_inode_info {TYPE_1__ ea; } ;
struct jfs_ea_list {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef int s64 ;
typedef int s32 ;


 int DXD_INLINE ;
 int EIO ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int PSIZE ;
 int addressDXD (TYPE_1__*) ;
 int ea_read_inline (struct inode*,struct jfs_ea_list*) ;
 int jfs_error (struct super_block*,char*) ;
 int lengthDXD (TYPE_1__*) ;
 int memcpy (char*,int ,int) ;
 int min (int ,int) ;
 struct metapage* read_metapage (struct inode*,int,int,int) ;
 int release_metapage (struct metapage*) ;
 int sizeDXD (TYPE_1__*) ;

__attribute__((used)) static int ea_read(struct inode *ip, struct jfs_ea_list *ealist)
{
 struct super_block *sb = ip->i_sb;
 struct jfs_inode_info *ji = JFS_IP(ip);
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 int nblocks;
 s64 blkno;
 char *cp = (char *) ealist;
 int i;
 int nbytes, nb;
 s32 bytes_to_read;
 struct metapage *mp;


 if (ji->ea.flag & DXD_INLINE)
  return ea_read_inline(ip, ealist);

 nbytes = sizeDXD(&ji->ea);
 if (!nbytes) {
  jfs_error(sb, "ea_read: nbytes is 0");
  return -EIO;
 }





 nblocks = lengthDXD(&ji->ea) << sbi->l2nbperpage;
 blkno = addressDXD(&ji->ea) << sbi->l2nbperpage;






 for (i = 0; i < nblocks; i += sbi->nbperpage) {




  nb = min(PSIZE, nbytes);
  bytes_to_read =
      ((((nb + sb->s_blocksize - 1)) >> sb->s_blocksize_bits))
      << sb->s_blocksize_bits;

  if (!(mp = read_metapage(ip, blkno + i, bytes_to_read, 1)))
   return -EIO;

  memcpy(cp, mp->data, nb);
  release_metapage(mp);

  cp += PSIZE;
  nbytes -= nb;
 }

 return 0;
}
