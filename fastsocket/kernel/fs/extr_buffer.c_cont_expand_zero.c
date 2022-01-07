
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_blkbits; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int pgoff_t ;
typedef unsigned int loff_t ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int BUG_ON (int) ;
 unsigned int PAGE_CACHE_MASK ;
 unsigned int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 int balance_dirty_pages_ratelimited (struct address_space*) ;
 int pagecache_write_begin (struct file*,struct address_space*,unsigned int,unsigned int,int ,struct page**,void**) ;
 int pagecache_write_end (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int cont_expand_zero(struct file *file, struct address_space *mapping,
       loff_t pos, loff_t *bytes)
{
 struct inode *inode = mapping->host;
 unsigned blocksize = 1 << inode->i_blkbits;
 struct page *page;
 void *fsdata;
 pgoff_t index, curidx;
 loff_t curpos;
 unsigned zerofrom, offset, len;
 int err = 0;

 index = pos >> PAGE_CACHE_SHIFT;
 offset = pos & ~PAGE_CACHE_MASK;

 while (index > (curidx = (curpos = *bytes)>>PAGE_CACHE_SHIFT)) {
  zerofrom = curpos & ~PAGE_CACHE_MASK;
  if (zerofrom & (blocksize-1)) {
   *bytes |= (blocksize-1);
   (*bytes)++;
  }
  len = PAGE_CACHE_SIZE - zerofrom;

  err = pagecache_write_begin(file, mapping, curpos, len,
      AOP_FLAG_UNINTERRUPTIBLE,
      &page, &fsdata);
  if (err)
   goto out;
  zero_user(page, zerofrom, len);
  err = pagecache_write_end(file, mapping, curpos, len, len,
      page, fsdata);
  if (err < 0)
   goto out;
  BUG_ON(err != len);
  err = 0;

  balance_dirty_pages_ratelimited(mapping);
 }


 if (index == curidx) {
  zerofrom = curpos & ~PAGE_CACHE_MASK;

  if (offset <= zerofrom) {
   goto out;
  }
  if (zerofrom & (blocksize-1)) {
   *bytes |= (blocksize-1);
   (*bytes)++;
  }
  len = offset - zerofrom;

  err = pagecache_write_begin(file, mapping, curpos, len,
      AOP_FLAG_UNINTERRUPTIBLE,
      &page, &fsdata);
  if (err)
   goto out;
  zero_user(page, zerofrom, len);
  err = pagecache_write_end(file, mapping, curpos, len, len,
      page, fsdata);
  if (err < 0)
   goto out;
  BUG_ON(err != len);
  err = 0;
 }
out:
 return err;
}
