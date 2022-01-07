
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int id_data; } ;
struct TYPE_5__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {TYPE_2__ id2; int i_dyn_features; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;


 int EROFS ;
 int KM_USER0 ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 scalar_t__ i_size_read (struct inode*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (void*,int ,scalar_t__) ;
 int memset (void*,int ,scalar_t__) ;
 int ocfs2_error (int ,char*,unsigned long long,...) ;
 scalar_t__ ocfs2_max_inline_data_with_xattr (int ,struct ocfs2_dinode*) ;

int ocfs2_read_inline_data(struct inode *inode, struct page *page,
      struct buffer_head *di_bh)
{
 void *kaddr;
 loff_t size;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

 if (!(le16_to_cpu(di->i_dyn_features) & OCFS2_INLINE_DATA_FL)) {
  ocfs2_error(inode->i_sb, "Inode %llu lost inline data flag",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
  return -EROFS;
 }

 size = i_size_read(inode);

 if (size > PAGE_CACHE_SIZE ||
     size > ocfs2_max_inline_data_with_xattr(inode->i_sb, di)) {
  ocfs2_error(inode->i_sb,
       "Inode %llu has with inline data has bad size: %Lu",
       (unsigned long long)OCFS2_I(inode)->ip_blkno,
       (unsigned long long)size);
  return -EROFS;
 }

 kaddr = kmap_atomic(page, KM_USER0);
 if (size)
  memcpy(kaddr, di->id2.i_data.id_data, size);

 memset(kaddr + size, 0, PAGE_CACHE_SIZE - size);
 flush_dcache_page(page);
 kunmap_atomic(kaddr, KM_USER0);

 SetPageUptodate(page);

 return 0;
}
