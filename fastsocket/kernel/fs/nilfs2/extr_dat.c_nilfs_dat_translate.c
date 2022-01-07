
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_dat_entry {int de_blocknr; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef scalar_t__ sector_t ;
typedef int __u64 ;


 int ENOENT ;
 int KM_USER0 ;
 int brelse (struct buffer_head*) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,int ,struct buffer_head*,void*) ;
 int nilfs_palloc_get_entry_block (struct inode*,int ,int ,struct buffer_head**) ;

int nilfs_dat_translate(struct inode *dat, __u64 vblocknr, sector_t *blocknrp)
{
 struct buffer_head *entry_bh;
 struct nilfs_dat_entry *entry;
 sector_t blocknr;
 void *kaddr;
 int ret;

 ret = nilfs_palloc_get_entry_block(dat, vblocknr, 0, &entry_bh);
 if (ret < 0)
  return ret;

 kaddr = kmap_atomic(entry_bh->b_page, KM_USER0);
 entry = nilfs_palloc_block_get_entry(dat, vblocknr, entry_bh, kaddr);
 blocknr = le64_to_cpu(entry->de_blocknr);
 if (blocknr == 0) {
  ret = -ENOENT;
  goto out;
 }
 if (blocknrp != ((void*)0))
  *blocknrp = blocknr;

 out:
 kunmap_atomic(kaddr, KM_USER0);
 brelse(entry_bh);
 return ret;
}
