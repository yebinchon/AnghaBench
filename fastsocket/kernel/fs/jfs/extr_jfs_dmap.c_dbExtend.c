
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int nbperpage; struct bmap* bmap; struct inode* ipbmap; } ;
struct inode {int i_sb; } ;
struct dmap {int dummy; } ;
struct bmap {int db_mapsize; int db_agsize; int db_l2nbperpage; } ;
typedef int s64 ;


 int BLKTODMAP (int,int ) ;
 int BPERDMAP ;
 int EIO ;
 int ENOSPC ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int PSIZE ;
 int RDWRLOCK_DMAP ;
 int dbAllocNext (struct bmap*,struct dmap*,int,int) ;
 int jfs_error (int ,char*) ;
 struct metapage* read_metapage (struct inode*,int,int ,int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static int dbExtend(struct inode *ip, s64 blkno, s64 nblocks, s64 addnblocks)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 s64 lblkno, lastblkno, extblkno;
 uint rel_block;
 struct metapage *mp;
 struct dmap *dp;
 int rc;
 struct inode *ipbmap = sbi->ipbmap;
 struct bmap *bmp;




 if (((rel_block = blkno & (sbi->nbperpage - 1))) &&
     (rel_block + nblocks + addnblocks > sbi->nbperpage))
  return -ENOSPC;


 lastblkno = blkno + nblocks - 1;




 extblkno = lastblkno + 1;

 IREAD_LOCK(ipbmap, RDWRLOCK_DMAP);


 bmp = sbi->bmap;
 if (lastblkno < 0 || lastblkno >= bmp->db_mapsize) {
  IREAD_UNLOCK(ipbmap);
  jfs_error(ip->i_sb,
     "dbExtend: the block is outside the filesystem");
  return -EIO;
 }
 if (addnblocks > BPERDMAP || extblkno >= bmp->db_mapsize ||
     (extblkno & (bmp->db_agsize - 1)) == 0) {
  IREAD_UNLOCK(ipbmap);
  return -ENOSPC;
 }




 lblkno = BLKTODMAP(extblkno, bmp->db_l2nbperpage);
 mp = read_metapage(ipbmap, lblkno, PSIZE, 0);
 if (mp == ((void*)0)) {
  IREAD_UNLOCK(ipbmap);
  return -EIO;
 }

 dp = (struct dmap *) mp->data;




 rc = dbAllocNext(bmp, dp, extblkno, (int) addnblocks);

 IREAD_UNLOCK(ipbmap);


 if (rc == 0)
  write_metapage(mp);
 else

  release_metapage(mp);


 return (rc);
}
