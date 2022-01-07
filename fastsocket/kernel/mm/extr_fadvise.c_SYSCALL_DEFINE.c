
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int ra_pages; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {int f_lock; int f_mode; TYPE_5__ f_ra; struct address_space* f_mapping; TYPE_3__ f_path; } ;
struct backing_dev_info {int ra_pages; } ;
struct address_space {struct backing_dev_info* backing_dev_info; TYPE_4__* a_ops; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;
struct TYPE_9__ {scalar_t__ get_xip_mem; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int i_mode; } ;
typedef int SYSCALL_DEFINE ;


 int EBADF ;
 int EINVAL ;
 int ESPIPE ;
 int FMODE_RANDOM ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;






 scalar_t__ S_ISFIFO (int ) ;
 int bdi_write_congested (struct backing_dev_info*) ;
 struct file* fget (int) ;
 int filemap_flush (struct address_space*) ;
 int force_page_cache_readahead (struct address_space*,struct file*,scalar_t__,unsigned long) ;
 int fput (struct file*) ;
 unsigned long invalidate_mapping_pages (struct address_space*,scalar_t__,scalar_t__) ;
 int lru_add_drain_all () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

SYSCALL_DEFINE(fadvise64_64)(int fd, loff_t offset, loff_t len, int advice)
{
 struct file *file = fget(fd);
 struct address_space *mapping;
 struct backing_dev_info *bdi;
 loff_t endbyte;
 pgoff_t start_index;
 pgoff_t end_index;
 unsigned long nrpages;
 int ret = 0;

 if (!file)
  return -EBADF;

 if (S_ISFIFO(file->f_path.dentry->d_inode->i_mode)) {
  ret = -ESPIPE;
  goto out;
 }

 mapping = file->f_mapping;
 if (!mapping || len < 0) {
  ret = -EINVAL;
  goto out;
 }

 if (mapping->a_ops->get_xip_mem) {
  switch (advice) {
  case 131:
  case 130:
  case 129:
  case 128:
  case 132:
  case 133:

   break;
  default:
   ret = -EINVAL;
  }
  goto out;
 }


 endbyte = offset + len;
 if (!len || endbyte < len)
  endbyte = -1;
 else
  endbyte--;

 bdi = mapping->backing_dev_info;

 switch (advice) {
 case 131:
  file->f_ra.ra_pages = bdi->ra_pages;
  spin_lock(&file->f_lock);
  file->f_mode &= ~FMODE_RANDOM;
  spin_unlock(&file->f_lock);
  break;
 case 130:
  spin_lock(&file->f_lock);
  file->f_mode |= FMODE_RANDOM;
  spin_unlock(&file->f_lock);
  break;
 case 129:
  file->f_ra.ra_pages = bdi->ra_pages * 2;
  spin_lock(&file->f_lock);
  file->f_mode &= ~FMODE_RANDOM;
  spin_unlock(&file->f_lock);
  break;
 case 128:

  start_index = offset >> PAGE_CACHE_SHIFT;
  end_index = endbyte >> PAGE_CACHE_SHIFT;


  nrpages = end_index - start_index + 1;
  if (!nrpages)
   nrpages = ~0UL;





  force_page_cache_readahead(mapping, file, start_index,
        nrpages);
  break;
 case 132:
  break;
 case 133:
  if (!bdi_write_congested(mapping->backing_dev_info))
   filemap_flush(mapping);


  start_index = (offset+(PAGE_CACHE_SIZE-1)) >> PAGE_CACHE_SHIFT;
  end_index = (endbyte >> PAGE_CACHE_SHIFT);

  if (end_index >= start_index) {
   unsigned long count = invalidate_mapping_pages(mapping,
      start_index, end_index);







   if (count < (end_index - start_index + 1)) {
    lru_add_drain_all();
    invalidate_mapping_pages(mapping, start_index,
      end_index);
   }
  }
  break;
 default:
  ret = -EINVAL;
 }
out:
 fput(file);
 return ret;
}
