
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volStructDesc {scalar_t__* stdIdent; int structType; } ;
struct udf_sb_info {int s_session; } ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int VSD_STD_ID_BEA01 ;
 int VSD_STD_ID_CD001 ;
 int VSD_STD_ID_LEN ;
 int VSD_STD_ID_NSR02 ;
 int VSD_STD_ID_NSR03 ;
 int VSD_STD_ID_TEA01 ;
 int brelse (struct buffer_head*) ;
 int strncmp (scalar_t__*,int ,int ) ;
 int udf_debug (char*,...) ;
 struct buffer_head* udf_tread (struct super_block*,int) ;

__attribute__((used)) static loff_t udf_check_vsd(struct super_block *sb)
{
 struct volStructDesc *vsd = ((void*)0);
 loff_t sector = 32768;
 int sectorsize;
 struct buffer_head *bh = ((void*)0);
 int nsr02 = 0;
 int nsr03 = 0;
 struct udf_sb_info *sbi;

 sbi = UDF_SB(sb);
 if (sb->s_blocksize < sizeof(struct volStructDesc))
  sectorsize = sizeof(struct volStructDesc);
 else
  sectorsize = sb->s_blocksize;

 sector += (sbi->s_session << sb->s_blocksize_bits);

 udf_debug("Starting at sector %u (%ld byte sectors)\n",
    (unsigned int)(sector >> sb->s_blocksize_bits),
    sb->s_blocksize);

 for (; !nsr02 && !nsr03; sector += sectorsize) {

  bh = udf_tread(sb, sector >> sb->s_blocksize_bits);
  if (!bh)
   break;


  vsd = (struct volStructDesc *)(bh->b_data +
           (sector & (sb->s_blocksize - 1)));

  if (vsd->stdIdent[0] == 0) {
   brelse(bh);
   break;
  } else if (!strncmp(vsd->stdIdent, VSD_STD_ID_CD001,
        VSD_STD_ID_LEN)) {
   switch (vsd->structType) {
   case 0:
    udf_debug("ISO9660 Boot Record found\n");
    break;
   case 1:
    udf_debug("ISO9660 Primary Volume Descriptor "
       "found\n");
    break;
   case 2:
    udf_debug("ISO9660 Supplementary Volume "
       "Descriptor found\n");
    break;
   case 3:
    udf_debug("ISO9660 Volume Partition Descriptor "
       "found\n");
    break;
   case 255:
    udf_debug("ISO9660 Volume Descriptor Set "
       "Terminator found\n");
    break;
   default:
    udf_debug("ISO9660 VRS (%u) found\n",
       vsd->structType);
    break;
   }
  } else if (!strncmp(vsd->stdIdent, VSD_STD_ID_BEA01,
        VSD_STD_ID_LEN))
   ;
  else if (!strncmp(vsd->stdIdent, VSD_STD_ID_TEA01,
        VSD_STD_ID_LEN)) {
   brelse(bh);
   break;
  } else if (!strncmp(vsd->stdIdent, VSD_STD_ID_NSR02,
        VSD_STD_ID_LEN))
   nsr02 = sector;
  else if (!strncmp(vsd->stdIdent, VSD_STD_ID_NSR03,
        VSD_STD_ID_LEN))
   nsr03 = sector;
  brelse(bh);
 }

 if (nsr03)
  return nsr03;
 else if (nsr02)
  return nsr02;
 else if (sector - (sbi->s_session << sb->s_blocksize_bits) == 32768)
  return -1;
 else
  return 0;
}
