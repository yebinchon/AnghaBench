
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int AOP_FLAG_CONT_EXPAND ;
 int AOP_FLAG_UNINTERRUPTIBLE ;
 int BUG_ON (int) ;
 int inode_newsize_ok (struct inode*,int ) ;
 int pagecache_write_begin (int *,struct address_space*,int ,int ,int,struct page**,void**) ;
 int pagecache_write_end (int *,struct address_space*,int ,int ,int ,struct page*,void*) ;

int generic_cont_expand_simple(struct inode *inode, loff_t size)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
 void *fsdata;
 int err;

 err = inode_newsize_ok(inode, size);
 if (err)
  goto out;

 err = pagecache_write_begin(((void*)0), mapping, size, 0,
    AOP_FLAG_UNINTERRUPTIBLE|AOP_FLAG_CONT_EXPAND,
    &page, &fsdata);
 if (err)
  goto out;

 err = pagecache_write_end(((void*)0), mapping, size, 0, 0, page, fsdata);
 BUG_ON(err > 0);

out:
 return err;
}
