
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 unsigned int AOP_FLAG_NOFS ;
 unsigned int AOP_FLAG_UNINTERRUPTIBLE ;
 int KM_USER0 ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (char*,char const*,int) ;
 int pagecache_write_begin (int *,struct address_space*,int ,int,unsigned int,struct page**,void**) ;
 int pagecache_write_end (int *,struct address_space*,int ,int,int,struct page*,void*) ;

int __page_symlink(struct inode *inode, const char *symname, int len, int nofs)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
 void *fsdata;
 int err;
 char *kaddr;
 unsigned int flags = AOP_FLAG_UNINTERRUPTIBLE;
 if (nofs)
  flags |= AOP_FLAG_NOFS;

retry:
 err = pagecache_write_begin(((void*)0), mapping, 0, len-1,
    flags, &page, &fsdata);
 if (err)
  goto fail;

 kaddr = kmap_atomic(page, KM_USER0);
 memcpy(kaddr, symname, len-1);
 kunmap_atomic(kaddr, KM_USER0);

 err = pagecache_write_end(((void*)0), mapping, 0, len-1, len-1,
       page, fsdata);
 if (err < 0)
  goto fail;
 if (err < len-1)
  goto retry;

 mark_inode_dirty(inode);
 return 0;
fail:
 return err;
}
