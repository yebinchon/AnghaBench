
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nilfs_sb_info {int s_super; } ;
struct nilfs_recovery_block {int blocknr; } ;
struct buffer_head {int b_size; int b_data; } ;


 int EIO ;
 int KM_USER0 ;
 int bh_offset (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memcpy (void*,int ,int ) ;
 struct buffer_head* sb_bread (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_recovery_copy_block(struct nilfs_sb_info *sbi,
         struct nilfs_recovery_block *rb,
         struct page *page)
{
 struct buffer_head *bh_org;
 void *kaddr;

 bh_org = sb_bread(sbi->s_super, rb->blocknr);
 if (unlikely(!bh_org))
  return -EIO;

 kaddr = kmap_atomic(page, KM_USER0);
 memcpy(kaddr + bh_offset(bh_org), bh_org->b_data, bh_org->b_size);
 kunmap_atomic(kaddr, KM_USER0);
 brelse(bh_org);
 return 0;
}
