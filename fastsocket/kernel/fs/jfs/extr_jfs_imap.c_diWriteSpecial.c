
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int l2nbperpage; int gengen; int ait2; } ;
struct inode {int i_ino; int i_sb; } ;
struct dinode {int di_gengen; int di_xtroot; } ;
typedef int ino_t ;
struct TYPE_2__ {int i_xtroot; } ;


 int AITBL_OFF ;
 int ASSERT (int) ;
 int FILESYSTEM_I ;
 int INOSPEREXT ;
 TYPE_1__* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int L2PSIZE ;
 int PSIZE ;
 int addressPXD (int *) ;
 int copy_to_dinode (struct dinode*,struct inode*) ;
 int cpu_to_le32 (int ) ;
 int jfs_err (char*) ;
 int memcpy (int *,int *,int) ;
 struct metapage* read_metapage (struct inode*,int,int ,int) ;
 int write_metapage (struct metapage*) ;

void diWriteSpecial(struct inode *ip, int secondary)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 uint address;
 struct dinode *dp;
 ino_t inum = ip->i_ino;
 struct metapage *mp;

 if (secondary)
  address = addressPXD(&sbi->ait2) >> sbi->l2nbperpage;
 else
  address = AITBL_OFF >> L2PSIZE;

 ASSERT(inum < INOSPEREXT);

 address += inum >> 3;


 mp = read_metapage(ip, address << sbi->l2nbperpage, PSIZE, 1);
 if (mp == ((void*)0)) {
  jfs_err("diWriteSpecial: failed to read aggregate inode "
   "extent!");
  return;
 }


 dp = (struct dinode *) (mp->data);
 dp += inum % 8;


 copy_to_dinode(dp, ip);
 memcpy(&dp->di_xtroot, &JFS_IP(ip)->i_xtroot, 288);

 if (inum == FILESYSTEM_I)
  dp->di_gengen = cpu_to_le32(sbi->gengen);


 write_metapage(mp);
}
