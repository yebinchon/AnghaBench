
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct super_block {int s_blocksize; } ;
typedef int daddr_t ;


 int BUG_ON (int) ;

__attribute__((used)) static inline u_long
vxfs_oblock(struct super_block *sbp, daddr_t block, u_long bsize)
{
 BUG_ON(sbp->s_blocksize % bsize);
 return (block * (sbp->s_blocksize / bsize));
}
