
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;


 int OMFS_DIR_START ;
 int OMFS_SB (int ) ;
 int clus_to_blk (int ,int ) ;
 int omfs_hash (char const*,int,int) ;
 struct buffer_head* sb_bread (int ,int) ;

__attribute__((used)) static struct buffer_head *omfs_get_bucket(struct inode *dir,
  const char *name, int namelen, int *ofs)
{
 int nbuckets = (dir->i_size - OMFS_DIR_START)/8;
 int block = clus_to_blk(OMFS_SB(dir->i_sb), dir->i_ino);
 int bucket = omfs_hash(name, namelen, nbuckets);

 *ofs = OMFS_DIR_START + bucket * 8;
 return sb_bread(dir->i_sb, block);
}
