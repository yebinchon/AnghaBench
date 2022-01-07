
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_sb_info {int dummy; } ;
struct jfs_inode_info {int active_ag; int agno; int ixpxd; } ;
struct inode {int i_ino; int i_sb; } ;
struct iag {int agstart; int * inoext; } ;


 int BLKTOAG (int ,struct jfs_sb_info*) ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int L2INOSPERIAG ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline void
diInitInode(struct inode *ip, int iagno, int ino, int extno, struct iag * iagp)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);

 ip->i_ino = (iagno << L2INOSPERIAG) + ino;
 jfs_ip->ixpxd = iagp->inoext[extno];
 jfs_ip->agno = BLKTOAG(le64_to_cpu(iagp->agstart), sbi);
 jfs_ip->active_ag = -1;
}
