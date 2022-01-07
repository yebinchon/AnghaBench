
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct udf_sb_info {int s_partitions; int s_partition; TYPE_1__* s_partmaps; } ;
struct super_block {int s_blocksize_bits; } ;
struct spaceBitmapDesc {int numOfBytes; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {long s_partition_len; } ;




 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int le32_to_cpu (int ) ;
 int udf_debug (char*,int,int) ;
 int udf_load_fileset (struct super_block*,struct buffer_head*,struct kernel_lb_addr*) ;
 struct buffer_head* udf_read_ptagged (struct super_block*,struct kernel_lb_addr*,int ,int*) ;

__attribute__((used)) static int udf_find_fileset(struct super_block *sb,
       struct kernel_lb_addr *fileset,
       struct kernel_lb_addr *root)
{
 struct buffer_head *bh = ((void*)0);
 long lastblock;
 uint16_t ident;
 struct udf_sb_info *sbi;

 if (fileset->logicalBlockNum != 0xFFFFFFFF ||
     fileset->partitionReferenceNum != 0xFFFF) {
  bh = udf_read_ptagged(sb, fileset, 0, &ident);

  if (!bh) {
   return 1;
  } else if (ident != 129) {
   brelse(bh);
   return 1;
  }

 }

 sbi = UDF_SB(sb);
 if (!bh) {

  struct kernel_lb_addr newfileset;


  return 1;

  for (newfileset.partitionReferenceNum = sbi->s_partitions - 1;
       (newfileset.partitionReferenceNum != 0xFFFF &&
        fileset->logicalBlockNum == 0xFFFFFFFF &&
        fileset->partitionReferenceNum == 0xFFFF);
       newfileset.partitionReferenceNum--) {
   lastblock = sbi->s_partmaps
     [newfileset.partitionReferenceNum]
      .s_partition_len;
   newfileset.logicalBlockNum = 0;

   do {
    bh = udf_read_ptagged(sb, &newfileset, 0,
            &ident);
    if (!bh) {
     newfileset.logicalBlockNum++;
     continue;
    }

    switch (ident) {
    case 128:
    {
     struct spaceBitmapDesc *sp;
     sp = (struct spaceBitmapDesc *)
        bh->b_data;
     newfileset.logicalBlockNum += 1 +
      ((le32_to_cpu(sp->numOfBytes) +
        sizeof(struct spaceBitmapDesc)
        - 1) >> sb->s_blocksize_bits);
     brelse(bh);
     break;
    }
    case 129:
     *fileset = newfileset;
     break;
    default:
     newfileset.logicalBlockNum++;
     brelse(bh);
     bh = ((void*)0);
     break;
    }
   } while (newfileset.logicalBlockNum < lastblock &&
     fileset->logicalBlockNum == 0xFFFFFFFF &&
     fileset->partitionReferenceNum == 0xFFFF);
  }
 }

 if ((fileset->logicalBlockNum != 0xFFFFFFFF ||
      fileset->partitionReferenceNum != 0xFFFF) && bh) {
  udf_debug("Fileset at block=%d, partition=%d\n",
     fileset->logicalBlockNum,
     fileset->partitionReferenceNum);

  sbi->s_partition = fileset->partitionReferenceNum;
  udf_load_fileset(sb, bh, root);
  brelse(bh);
  return 0;
 }
 return 1;
}
