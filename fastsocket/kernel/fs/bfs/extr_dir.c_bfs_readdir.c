
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_size; TYPE_3__* i_sb; int i_ino; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_sb_info {int bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; int name; } ;
typedef scalar_t__ (* filldir_t ) (void*,int ,int,int,int ,int ) ;
struct TYPE_9__ {int i_sblock; } ;
struct TYPE_8__ {int s_id; } ;
struct TYPE_6__ {struct inode* d_inode; } ;


 int BFS_BSIZE ;
 int BFS_BSIZE_BITS ;
 int BFS_DIRENT_SIZE ;
 TYPE_5__* BFS_I (struct inode*) ;
 int BFS_NAMELEN ;
 struct bfs_sb_info* BFS_SB (TYPE_3__*) ;
 int DT_UNKNOWN ;
 int EBADF ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printf (char*,unsigned long,int ,int ) ;
 struct buffer_head* sb_bread (TYPE_3__*,int) ;
 int strnlen (int ,int ) ;

__attribute__((used)) static int bfs_readdir(struct file *f, void *dirent, filldir_t filldir)
{
 struct inode *dir = f->f_path.dentry->d_inode;
 struct buffer_head *bh;
 struct bfs_dirent *de;
 struct bfs_sb_info *info = BFS_SB(dir->i_sb);
 unsigned int offset;
 int block;

 mutex_lock(&info->bfs_lock);

 if (f->f_pos & (BFS_DIRENT_SIZE - 1)) {
  printf("Bad f_pos=%08lx for %s:%08lx\n",
     (unsigned long)f->f_pos,
     dir->i_sb->s_id, dir->i_ino);
  mutex_unlock(&info->bfs_lock);
  return -EBADF;
 }

 while (f->f_pos < dir->i_size) {
  offset = f->f_pos & (BFS_BSIZE - 1);
  block = BFS_I(dir)->i_sblock + (f->f_pos >> BFS_BSIZE_BITS);
  bh = sb_bread(dir->i_sb, block);
  if (!bh) {
   f->f_pos += BFS_BSIZE - offset;
   continue;
  }
  do {
   de = (struct bfs_dirent *)(bh->b_data + offset);
   if (de->ino) {
    int size = strnlen(de->name, BFS_NAMELEN);
    if (filldir(dirent, de->name, size, f->f_pos,
      le16_to_cpu(de->ino),
      DT_UNKNOWN) < 0) {
     brelse(bh);
     mutex_unlock(&info->bfs_lock);
     return 0;
    }
   }
   offset += BFS_DIRENT_SIZE;
   f->f_pos += BFS_DIRENT_SIZE;
  } while ((offset < BFS_BSIZE) && (f->f_pos < dir->i_size));
  brelse(bh);
 }

 mutex_unlock(&info->bfs_lock);
 return 0;
}
