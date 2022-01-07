
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int pr_entry_nr; } ;
struct nilfs_dat_entry {int de_blocknr; int de_end; int de_start; } ;
struct inode {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int b_page; } ;


 int KM_USER0 ;
 int WARN_ON (int) ;
 int cpu_to_le64 (scalar_t__) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int nilfs_dat_commit_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_dat_commit_free (struct inode*,struct nilfs_palloc_req*) ;
 scalar_t__ nilfs_mdt_cno (struct inode*) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,int ,TYPE_1__*,void*) ;

void nilfs_dat_commit_end(struct inode *dat, struct nilfs_palloc_req *req,
     int dead)
{
 struct nilfs_dat_entry *entry;
 __u64 start, end;
 sector_t blocknr;
 void *kaddr;

 kaddr = kmap_atomic(req->pr_entry_bh->b_page, KM_USER0);
 entry = nilfs_palloc_block_get_entry(dat, req->pr_entry_nr,
          req->pr_entry_bh, kaddr);
 end = start = le64_to_cpu(entry->de_start);
 if (!dead) {
  end = nilfs_mdt_cno(dat);
  WARN_ON(start > end);
 }
 entry->de_end = cpu_to_le64(end);
 blocknr = le64_to_cpu(entry->de_blocknr);
 kunmap_atomic(kaddr, KM_USER0);

 if (blocknr == 0)
  nilfs_dat_commit_free(dat, req);
 else
  nilfs_dat_commit_entry(dat, req);
}
