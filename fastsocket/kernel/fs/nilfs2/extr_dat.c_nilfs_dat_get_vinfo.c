
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_vinfo {unsigned long vi_vblocknr; void* vi_blocknr; void* vi_end; void* vi_start; } ;
struct nilfs_dat_entry {int de_blocknr; int de_end; int de_start; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int ssize_t ;
typedef unsigned long __u64 ;
struct TYPE_2__ {unsigned long mi_entries_per_block; } ;


 int KM_USER0 ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int do_div (unsigned long,unsigned long) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 void* le64_to_cpu (int ) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,unsigned long,struct buffer_head*,void*) ;
 int nilfs_palloc_get_entry_block (struct inode*,unsigned long,int ,struct buffer_head**) ;

ssize_t nilfs_dat_get_vinfo(struct inode *dat, void *buf, unsigned visz,
       size_t nvi)
{
 struct buffer_head *entry_bh;
 struct nilfs_dat_entry *entry;
 struct nilfs_vinfo *vinfo = buf;
 __u64 first, last;
 void *kaddr;
 unsigned long entries_per_block = NILFS_MDT(dat)->mi_entries_per_block;
 int i, j, n, ret;

 for (i = 0; i < nvi; i += n) {
  ret = nilfs_palloc_get_entry_block(dat, vinfo->vi_vblocknr,
         0, &entry_bh);
  if (ret < 0)
   return ret;
  kaddr = kmap_atomic(entry_bh->b_page, KM_USER0);

  first = vinfo->vi_vblocknr;
  do_div(first, entries_per_block);
  first *= entries_per_block;
  last = first + entries_per_block - 1;
  for (j = i, n = 0;
       j < nvi && vinfo->vi_vblocknr >= first &&
        vinfo->vi_vblocknr <= last;
       j++, n++, vinfo = (void *)vinfo + visz) {
   entry = nilfs_palloc_block_get_entry(
    dat, vinfo->vi_vblocknr, entry_bh, kaddr);
   vinfo->vi_start = le64_to_cpu(entry->de_start);
   vinfo->vi_end = le64_to_cpu(entry->de_end);
   vinfo->vi_blocknr = le64_to_cpu(entry->de_blocknr);
  }
  kunmap_atomic(kaddr, KM_USER0);
  brelse(entry_bh);
 }

 return nvi;
}
