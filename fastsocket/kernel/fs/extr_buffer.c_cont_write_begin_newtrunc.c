
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_blkbits; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;
typedef int get_block_t ;


 unsigned int PAGE_CACHE_MASK ;
 int block_write_begin_newtrunc (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int *) ;
 int cont_expand_zero (struct file*,struct address_space*,unsigned int,unsigned int*) ;

int cont_write_begin_newtrunc(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata,
   get_block_t *get_block, loff_t *bytes)
{
 struct inode *inode = mapping->host;
 unsigned blocksize = 1 << inode->i_blkbits;
 unsigned zerofrom;
 int err;

 err = cont_expand_zero(file, mapping, pos, bytes);
 if (err)
  goto out;

 zerofrom = *bytes & ~PAGE_CACHE_MASK;
 if (pos+len > *bytes && zerofrom & (blocksize-1)) {
  *bytes |= (blocksize-1);
  (*bytes)++;
 }

 *pagep = ((void*)0);
 err = block_write_begin_newtrunc(file, mapping, pos, len,
    flags, pagep, fsdata, get_block);
out:
 return err;
}
