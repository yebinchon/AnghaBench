
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_sb_info {scalar_t__ s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;
struct tag {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_3__ {int * identSuffix; } ;
struct logicalVolIntegrityDescImpUse {TYPE_1__ impIdent; } ;
struct TYPE_4__ {int tagChecksum; int descCRCLength; int descCRC; } ;
struct logicalVolIntegrityDesc {TYPE_2__ descTag; int integrityType; int recordingDateAndTime; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int CURRENT_TIME ;
 int LVID_INTEGRITY_TYPE_OPEN ;
 int UDF_OS_CLASS_UNIX ;
 int UDF_OS_ID_LINUX ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int crc_itu_t (int ,char*,int ) ;
 int le16_to_cpu (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct logicalVolIntegrityDescImpUse* udf_sb_lvidiu (struct udf_sb_info*) ;
 int udf_tag_checksum (TYPE_2__*) ;
 int udf_time_to_disk_stamp (int *,int ) ;

__attribute__((used)) static void udf_open_lvid(struct super_block *sb)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct buffer_head *bh = sbi->s_lvid_bh;
 struct logicalVolIntegrityDesc *lvid;
 struct logicalVolIntegrityDescImpUse *lvidiu;

 if (!bh)
  return;
 lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
 lvidiu = udf_sb_lvidiu(sbi);

 lvidiu->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
 lvidiu->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
 udf_time_to_disk_stamp(&lvid->recordingDateAndTime,
    CURRENT_TIME);
 lvid->integrityType = cpu_to_le32(LVID_INTEGRITY_TYPE_OPEN);

 lvid->descTag.descCRC = cpu_to_le16(
  crc_itu_t(0, (char *)lvid + sizeof(struct tag),
   le16_to_cpu(lvid->descTag.descCRCLength)));

 lvid->descTag.tagChecksum = udf_tag_checksum(&lvid->descTag);
 mark_buffer_dirty(bh);
 sbi->s_lvid_dirty = 0;
}
