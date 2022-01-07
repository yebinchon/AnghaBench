
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segsum_info {void* nsumblk; void* nblocks; void* nfileblk; void* sumbytes; void* nfinfo; void* next; void* ctime; void* seg_seq; int flags; } ;
struct nilfs_segment_summary {int ss_sumbytes; int ss_nfinfo; int ss_nblocks; int ss_next; int ss_create; int ss_seq; int ss_flags; } ;


 void* DIV_ROUND_UP (void*,unsigned int) ;
 int NILFS_SEG_HAS_SR (struct nilfs_segsum_info*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;

__attribute__((used)) static void store_segsum_info(struct nilfs_segsum_info *ssi,
         struct nilfs_segment_summary *sum,
         unsigned int blocksize)
{
 ssi->flags = le16_to_cpu(sum->ss_flags);
 ssi->seg_seq = le64_to_cpu(sum->ss_seq);
 ssi->ctime = le64_to_cpu(sum->ss_create);
 ssi->next = le64_to_cpu(sum->ss_next);
 ssi->nblocks = le32_to_cpu(sum->ss_nblocks);
 ssi->nfinfo = le32_to_cpu(sum->ss_nfinfo);
 ssi->sumbytes = le32_to_cpu(sum->ss_sumbytes);

 ssi->nsumblk = DIV_ROUND_UP(ssi->sumbytes, blocksize);
 ssi->nfileblk = ssi->nblocks - ssi->nsumblk - !!NILFS_SEG_HAS_SR(ssi);
}
