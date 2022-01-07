
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {unsigned int i_size; struct super_block* i_sb; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {unsigned int f_pos; TYPE_2__ f_path; } ;
struct cramfs_inode {int namelen; int mode; } ;
typedef int mode_t ;
typedef int ino_t ;
typedef int (* filldir_t ) (void*,char*,int,unsigned int,int ,int) ;
struct TYPE_3__ {struct inode* d_inode; } ;


 scalar_t__ CRAMFS_MAXPATHLEN ;
 int CRAMINO (struct cramfs_inode*) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OFFSET (struct inode*) ;
 struct cramfs_inode* cramfs_read (struct super_block*,scalar_t__,scalar_t__) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int memcpy (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_mutex ;

__attribute__((used)) static int cramfs_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct super_block *sb = inode->i_sb;
 char *buf;
 unsigned int offset;
 int copied;


 offset = filp->f_pos;
 if (offset >= inode->i_size)
  return 0;

 if (offset & 3)
  return -EINVAL;

 buf = kmalloc(CRAMFS_MAXPATHLEN, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 copied = 0;
 while (offset < inode->i_size) {
  struct cramfs_inode *de;
  unsigned long nextoffset;
  char *name;
  ino_t ino;
  mode_t mode;
  int namelen, error;

  mutex_lock(&read_mutex);
  de = cramfs_read(sb, OFFSET(inode) + offset, sizeof(*de)+CRAMFS_MAXPATHLEN);
  name = (char *)(de+1);






  namelen = de->namelen << 2;
  memcpy(buf, name, namelen);
  ino = CRAMINO(de);
  mode = de->mode;
  mutex_unlock(&read_mutex);
  nextoffset = offset + sizeof(*de) + namelen;
  for (;;) {
   if (!namelen) {
    kfree(buf);
    return -EIO;
   }
   if (buf[namelen-1])
    break;
   namelen--;
  }
  error = filldir(dirent, buf, namelen, offset, ino, mode >> 12);
  if (error)
   break;

  offset = nextoffset;
  filp->f_pos = offset;
  copied++;
 }
 kfree(buf);
 return 0;
}
