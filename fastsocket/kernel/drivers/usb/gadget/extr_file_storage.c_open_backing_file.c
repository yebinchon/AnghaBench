
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lun {int ro; int file_length; int num_sectors; struct file* filp; } ;
struct inode {TYPE_4__* i_mapping; int i_mode; int i_bdev; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct file {int f_mode; TYPE_3__* f_op; TYPE_2__ f_path; } ;
typedef int loff_t ;
struct TYPE_12__ {int files; } ;
struct TYPE_11__ {scalar_t__ cdrom; } ;
struct TYPE_10__ {int host; } ;
struct TYPE_9__ {scalar_t__ aio_write; scalar_t__ write; scalar_t__ aio_read; scalar_t__ read; } ;
struct TYPE_7__ {struct inode* d_inode; } ;


 int EINVAL ;
 int EROFS ;
 int ETOOSMALL ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct file*) ;
 int LDBG (struct lun*,char*,char const*) ;
 int LINFO (struct lun*,char*,...) ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int O_RDWR ;
 int PTR_ERR (struct file*) ;
 scalar_t__ S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ bdev_read_only (int ) ;
 TYPE_6__* current ;
 int filp_close (struct file*,int ) ;
 struct file* filp_open (char const*,int,int ) ;
 int get_file (struct file*) ;
 int i_size_read (int ) ;
 TYPE_5__ mod_data ;

__attribute__((used)) static int open_backing_file(struct lun *curlun, const char *filename)
{
 int ro;
 struct file *filp = ((void*)0);
 int rc = -EINVAL;
 struct inode *inode = ((void*)0);
 loff_t size;
 loff_t num_sectors;
 loff_t min_sectors;


 ro = curlun->ro;
 if (!ro) {
  filp = filp_open(filename, O_RDWR | O_LARGEFILE, 0);
  if (-EROFS == PTR_ERR(filp))
   ro = 1;
 }
 if (ro)
  filp = filp_open(filename, O_RDONLY | O_LARGEFILE, 0);
 if (IS_ERR(filp)) {
  LINFO(curlun, "unable to open backing file: %s\n", filename);
  return PTR_ERR(filp);
 }

 if (!(filp->f_mode & FMODE_WRITE))
  ro = 1;

 if (filp->f_path.dentry)
  inode = filp->f_path.dentry->d_inode;
 if (inode && S_ISBLK(inode->i_mode)) {
  if (bdev_read_only(inode->i_bdev))
   ro = 1;
 } else if (!inode || !S_ISREG(inode->i_mode)) {
  LINFO(curlun, "invalid file type: %s\n", filename);
  goto out;
 }



 if (!filp->f_op || !(filp->f_op->read || filp->f_op->aio_read)) {
  LINFO(curlun, "file not readable: %s\n", filename);
  goto out;
 }
 if (!(filp->f_op->write || filp->f_op->aio_write))
  ro = 1;

 size = i_size_read(inode->i_mapping->host);
 if (size < 0) {
  LINFO(curlun, "unable to find file size: %s\n", filename);
  rc = (int) size;
  goto out;
 }
 num_sectors = size >> 9;
 min_sectors = 1;
 if (mod_data.cdrom) {
  num_sectors &= ~3;
  min_sectors = 300*4;
  if (num_sectors >= 256*60*75*4) {
   num_sectors = (256*60*75 - 1) * 4;
   LINFO(curlun, "file too big: %s\n", filename);
   LINFO(curlun, "using only first %d blocks\n",
     (int) num_sectors);
  }
 }
 if (num_sectors < min_sectors) {
  LINFO(curlun, "file too small: %s\n", filename);
  rc = -ETOOSMALL;
  goto out;
 }

 get_file(filp);
 curlun->ro = ro;
 curlun->filp = filp;
 curlun->file_length = size;
 curlun->num_sectors = num_sectors;
 LDBG(curlun, "open backing file: %s\n", filename);
 rc = 0;

out:
 filp_close(filp, current->files);
 return rc;
}
