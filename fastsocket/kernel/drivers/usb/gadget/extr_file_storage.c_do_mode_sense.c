
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lun {void* sense_data; scalar_t__ ro; } ;
struct fsg_dev {int* cmnd; struct lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;


 int EINVAL ;
 int SC_MODE_SENSE_6 ;
 void* SS_INVALID_FIELD_IN_CDB ;
 void* SS_SAVING_PARAMETERS_NOT_SUPPORTED ;
 int memset (int*,int ,int) ;
 int put_unaligned_be16 (int,int*) ;

__attribute__((used)) static int do_mode_sense(struct fsg_dev *fsg, struct fsg_buffhd *bh)
{
 struct lun *curlun = fsg->curlun;
 int mscmnd = fsg->cmnd[0];
 u8 *buf = (u8 *) bh->buf;
 u8 *buf0 = buf;
 int pc, page_code;
 int changeable_values, all_pages;
 int valid_page = 0;
 int len, limit;

 if ((fsg->cmnd[1] & ~0x08) != 0) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }
 pc = fsg->cmnd[2] >> 6;
 page_code = fsg->cmnd[2] & 0x3f;
 if (pc == 3) {
  curlun->sense_data = SS_SAVING_PARAMETERS_NOT_SUPPORTED;
  return -EINVAL;
 }
 changeable_values = (pc == 1);
 all_pages = (page_code == 0x3f);





 memset(buf, 0, 8);
 if (mscmnd == SC_MODE_SENSE_6) {
  buf[2] = (curlun->ro ? 0x80 : 0x00);
  buf += 4;
  limit = 255;
 } else {
  buf[3] = (curlun->ro ? 0x80 : 0x00);
  buf += 8;
  limit = 65535;
 }





 if (page_code == 0x08 || all_pages) {
  valid_page = 1;
  buf[0] = 0x08;
  buf[1] = 10;
  memset(buf+2, 0, 10);

  if (!changeable_values) {
   buf[2] = 0x04;


   put_unaligned_be16(0xffff, &buf[4]);


   put_unaligned_be16(0xffff, &buf[8]);

   put_unaligned_be16(0xffff, &buf[10]);

  }
  buf += 12;
 }



 len = buf - buf0;
 if (!valid_page || len > limit) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }


 if (mscmnd == SC_MODE_SENSE_6)
  buf0[0] = len - 1;
 else
  put_unaligned_be16(len - 2, buf0);
 return len;
}
