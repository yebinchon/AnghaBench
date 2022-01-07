
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_sb_info {int nbperpage; struct bmap* bmap; } ;
struct jfs_inode_info {scalar_t__ fileset; int active_ag; int ag_lock; } ;
struct inode {int i_mode; int i_sb; } ;
struct bmap {int db_maxfreebud; int * db_active; } ;
typedef int s64 ;


 int BLKTOAG (int,struct jfs_sb_info*) ;
 int ENOSPC ;
 scalar_t__ FILESYSTEM_I ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dbAlloc (struct inode*,int,int,int*) ;
 int extRoundDown (int) ;
 int min (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
extBalloc(struct inode *ip, s64 hint, s64 * nblocks, s64 * blkno)
{
 struct jfs_inode_info *ji = JFS_IP(ip);
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 s64 nb, nblks, daddr, max;
 int rc, nbperpage = sbi->nbperpage;
 struct bmap *bmp = sbi->bmap;
 int ag;







 max = (s64) 1 << bmp->db_maxfreebud;
 if (*nblocks >= max && *nblocks > nbperpage)
  nb = nblks = (max > nbperpage) ? max : nbperpage;
 else
  nb = nblks = *nblocks;


 while ((rc = dbAlloc(ip, hint, nb, &daddr)) != 0) {



  if (rc != -ENOSPC)
   return (rc);


  nb = min(nblks, extRoundDown(nb));


  if (nb < nbperpage)
   return (rc);
 }

 *nblocks = nb;
 *blkno = daddr;

 if (S_ISREG(ip->i_mode) && (ji->fileset == FILESYSTEM_I)) {
  ag = BLKTOAG(daddr, sbi);
  spin_lock_irq(&ji->ag_lock);
  if (ji->active_ag == -1) {
   atomic_inc(&bmp->db_active[ag]);
   ji->active_ag = ag;
  } else if (ji->active_ag != ag) {
   atomic_dec(&bmp->db_active[ji->active_ag]);
   atomic_inc(&bmp->db_active[ag]);
   ji->active_ag = ag;
  }
  spin_unlock_irq(&ji->ag_lock);
 }

 return (0);
}
