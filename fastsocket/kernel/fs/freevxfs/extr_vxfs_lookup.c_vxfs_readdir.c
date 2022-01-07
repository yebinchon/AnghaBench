
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct vxfs_direct {char* d_name; int d_namelen; int d_ino; int d_reclen; } ;
struct vxfs_dirblk {int dummy; } ;
struct super_block {scalar_t__ s_blocksize; scalar_t__ s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int i_mapping; int i_size; int i_ino; struct super_block* i_sb; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef scalar_t__ loff_t ;
typedef int (* filldir_t ) (void*,char*,int,scalar_t__,int ,int ) ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int vii_dotdot; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int DT_DIR ;
 int DT_UNKNOWN ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_CACHE_MASK ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 scalar_t__ VXFS_BLOCK_PER_PAGE (struct super_block*) ;
 scalar_t__ VXFS_DIRBLKOV (struct vxfs_dirblk*) ;
 scalar_t__ VXFS_DIRLEN (int) ;
 scalar_t__ VXFS_DIRROUND (int ) ;
 TYPE_3__* VXFS_INO (struct inode*) ;
 scalar_t__ dir_blocks (struct inode*) ;
 scalar_t__ dir_pages (struct inode*) ;
 int lock_kernel () ;
 scalar_t__ page_address (struct page*) ;
 int unlock_kernel () ;
 struct page* vxfs_get_page (int ,scalar_t__) ;
 struct vxfs_direct* vxfs_next_entry (struct vxfs_direct*) ;
 int vxfs_put_page (struct page*) ;

__attribute__((used)) static int
vxfs_readdir(struct file *fp, void *retp, filldir_t filler)
{
 struct inode *ip = fp->f_path.dentry->d_inode;
 struct super_block *sbp = ip->i_sb;
 u_long bsize = sbp->s_blocksize;
 u_long page, npages, block, pblocks, nblocks, offset;
 loff_t pos;

 lock_kernel();

 switch ((long)fp->f_pos) {
 case 0:
  if (filler(retp, ".", 1, fp->f_pos, ip->i_ino, DT_DIR) < 0)
   goto out;
  fp->f_pos++;

 case 1:
  if (filler(retp, "..", 2, fp->f_pos, VXFS_INO(ip)->vii_dotdot, DT_DIR) < 0)
   goto out;
  fp->f_pos++;

 }

 pos = fp->f_pos - 2;

 if (pos > VXFS_DIRROUND(ip->i_size)) {
  unlock_kernel();
  return 0;
 }

 npages = dir_pages(ip);
 nblocks = dir_blocks(ip);
 pblocks = VXFS_BLOCK_PER_PAGE(sbp);

 page = pos >> PAGE_CACHE_SHIFT;
 offset = pos & ~PAGE_CACHE_MASK;
 block = (u_long)(pos >> sbp->s_blocksize_bits) % pblocks;

 for (; page < npages; page++, block = 0) {
  caddr_t kaddr;
  struct page *pp;

  pp = vxfs_get_page(ip->i_mapping, page);
  if (IS_ERR(pp))
   continue;
  kaddr = (caddr_t)page_address(pp);

  for (; block <= nblocks && block <= pblocks; block++) {
   caddr_t baddr, limit;
   struct vxfs_dirblk *dbp;
   struct vxfs_direct *de;

   baddr = kaddr + (block * bsize);
   limit = baddr + bsize - VXFS_DIRLEN(1);

   dbp = (struct vxfs_dirblk *)baddr;
   de = (struct vxfs_direct *)
    (offset ?
     (kaddr + offset) :
     (baddr + VXFS_DIRBLKOV(dbp)));

   for (; (caddr_t)de <= limit; de = vxfs_next_entry(de)) {
    int over;

    if (!de->d_reclen)
     break;
    if (!de->d_ino)
     continue;

    offset = (caddr_t)de - kaddr;
    over = filler(retp, de->d_name, de->d_namelen,
     ((page << PAGE_CACHE_SHIFT) | offset) + 2,
     de->d_ino, DT_UNKNOWN);
    if (over) {
     vxfs_put_page(pp);
     goto done;
    }
   }
   offset = 0;
  }
  vxfs_put_page(pp);
  offset = 0;
 }

done:
 fp->f_pos = ((page << PAGE_CACHE_SHIFT) | offset) + 2;
out:
 unlock_kernel();
 return 0;
}
