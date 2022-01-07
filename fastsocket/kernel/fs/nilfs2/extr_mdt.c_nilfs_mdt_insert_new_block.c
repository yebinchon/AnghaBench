
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int i_bmap; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_page; scalar_t__ b_blocknr; } ;


 int KM_USER0 ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int bh_offset (struct buffer_head*) ;
 int flush_dcache_page (int ) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memset (void*,int ,int) ;
 int nilfs_bmap_insert (int ,unsigned long,unsigned long) ;
 int nilfs_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nilfs_mdt_insert_new_block(struct inode *inode, unsigned long block,
      struct buffer_head *bh,
      void (*init_block)(struct inode *,
           struct buffer_head *, void *))
{
 struct nilfs_inode_info *ii = NILFS_I(inode);
 void *kaddr;
 int ret;




 bh->b_blocknr = 0;

 ret = nilfs_bmap_insert(ii->i_bmap, block, (unsigned long)bh);
 if (unlikely(ret))
  return ret;

 set_buffer_mapped(bh);

 kaddr = kmap_atomic(bh->b_page, KM_USER0);
 memset(kaddr + bh_offset(bh), 0, 1 << inode->i_blkbits);
 if (init_block)
  init_block(inode, bh, kaddr);
 flush_dcache_page(bh->b_page);
 kunmap_atomic(kaddr, KM_USER0);

 set_buffer_uptodate(bh);
 nilfs_mark_buffer_dirty(bh);
 nilfs_mdt_mark_dirty(inode);
 return 0;
}
