
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {unsigned long i_size; TYPE_1__* i_sb; int i_mutex; struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_5__ {int i_flags; } ;
struct TYPE_4__ {unsigned long s_blocksize; } ;


 int ENOMEM ;
 int PAGE_CACHE_SHIFT ;
 TYPE_3__* REISERFS_I (struct inode*) ;
 int flush_dcache_page (struct page*) ;
 struct page* grab_cache_page (struct address_space*,int) ;
 int i_nopack_mask ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_cache_release (struct page*) ;
 int reiserfs_commit_write (int *,struct page*,unsigned long,unsigned long) ;
 int reiserfs_prepare_write (int *,struct page*,unsigned long,unsigned long) ;
 int reiserfs_write_lock (TYPE_1__*) ;
 int reiserfs_write_unlock (TYPE_1__*) ;
 int unlock_page (struct page*) ;

int reiserfs_unpack(struct inode *inode, struct file *filp)
{
 int retval = 0;
 int index;
 struct page *page;
 struct address_space *mapping;
 unsigned long write_from;
 unsigned long blocksize = inode->i_sb->s_blocksize;

 if (inode->i_size == 0) {
  REISERFS_I(inode)->i_flags |= i_nopack_mask;
  return 0;
 }

 if (REISERFS_I(inode)->i_flags & i_nopack_mask) {
  return 0;
 }




 mutex_lock(&inode->i_mutex);
 reiserfs_write_lock(inode->i_sb);

 write_from = inode->i_size & (blocksize - 1);

 if (write_from == 0) {
  REISERFS_I(inode)->i_flags |= i_nopack_mask;
  goto out;
 }





 index = inode->i_size >> PAGE_CACHE_SHIFT;
 mapping = inode->i_mapping;
 page = grab_cache_page(mapping, index);
 retval = -ENOMEM;
 if (!page) {
  goto out;
 }
 retval = reiserfs_prepare_write(((void*)0), page, write_from, write_from);
 if (retval)
  goto out_unlock;


 flush_dcache_page(page);
 retval = reiserfs_commit_write(((void*)0), page, write_from, write_from);
 REISERFS_I(inode)->i_flags |= i_nopack_mask;

      out_unlock:
 unlock_page(page);
 page_cache_release(page);

      out:
 mutex_unlock(&inode->i_mutex);
 reiserfs_write_unlock(inode->i_sb);
 return retval;
}
