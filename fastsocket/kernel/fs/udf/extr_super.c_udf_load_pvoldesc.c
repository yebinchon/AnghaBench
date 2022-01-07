
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ustr {int u_len; int u_name; } ;
struct timestamp {int typeAndTimezone; int minute; int hour; int day; int month; int year; } ;
struct super_block {int dummy; } ;
struct primaryVolDesc {int volSetIdent; int volIdent; struct timestamp recordingDateAndTime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;
struct TYPE_2__ {int s_volume_ident; int s_record_time; } ;


 int BUG_ON (int) ;
 int GFP_NOFS ;
 scalar_t__ TAG_IDENT_PVD ;
 TYPE_1__* UDF_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int kfree (struct ustr*) ;
 struct ustr* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int strncpy (int ,int ,int) ;
 scalar_t__ udf_CS0toUTF8 (struct ustr*,struct ustr*) ;
 int udf_build_ustr (struct ustr*,int ,int) ;
 int udf_debug (char*,int ,...) ;
 scalar_t__ udf_disk_stamp_to_time (int *,struct timestamp) ;
 struct buffer_head* udf_read_tagged (struct super_block*,int ,int ,scalar_t__*) ;

__attribute__((used)) static int udf_load_pvoldesc(struct super_block *sb, sector_t block)
{
 struct primaryVolDesc *pvoldesc;
 struct ustr *instr, *outstr;
 struct buffer_head *bh;
 uint16_t ident;
 int ret = 1;

 instr = kmalloc(sizeof(struct ustr), GFP_NOFS);
 if (!instr)
  return 1;

 outstr = kmalloc(sizeof(struct ustr), GFP_NOFS);
 if (!outstr)
  goto out1;

 bh = udf_read_tagged(sb, block, block, &ident);
 if (!bh)
  goto out2;

 BUG_ON(ident != TAG_IDENT_PVD);

 pvoldesc = (struct primaryVolDesc *)bh->b_data;

 if (udf_disk_stamp_to_time(&UDF_SB(sb)->s_record_time,
         pvoldesc->recordingDateAndTime)) {







 }

 if (!udf_build_ustr(instr, pvoldesc->volIdent, 32))
  if (udf_CS0toUTF8(outstr, instr)) {
   strncpy(UDF_SB(sb)->s_volume_ident, outstr->u_name,
    outstr->u_len > 31 ? 31 : outstr->u_len);
   udf_debug("volIdent[] = '%s'\n",
     UDF_SB(sb)->s_volume_ident);
  }

 if (!udf_build_ustr(instr, pvoldesc->volSetIdent, 128))
  if (udf_CS0toUTF8(outstr, instr))
   udf_debug("volSetIdent[] = '%s'\n", outstr->u_name);

 brelse(bh);
 ret = 0;
out2:
 kfree(outstr);
out1:
 kfree(instr);
 return ret;
}
