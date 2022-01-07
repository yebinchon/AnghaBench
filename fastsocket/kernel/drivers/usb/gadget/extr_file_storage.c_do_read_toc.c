
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lun {int num_sectors; int sense_data; } ;
struct fsg_dev {int* cmnd; struct lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;


 int EINVAL ;
 int SS_INVALID_FIELD_IN_CDB ;
 int memset (int*,int ,int) ;
 int store_cdrom_address (int*,int,int ) ;

__attribute__((used)) static int do_read_toc(struct fsg_dev *fsg, struct fsg_buffhd *bh)
{
 struct lun *curlun = fsg->curlun;
 int msf = fsg->cmnd[1] & 0x02;
 int start_track = fsg->cmnd[6];
 u8 *buf = (u8 *) bh->buf;

 if ((fsg->cmnd[1] & ~0x02) != 0 ||
   start_track > 1) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }

 memset(buf, 0, 20);
 buf[1] = (20-2);
 buf[2] = 1;
 buf[3] = 1;
 buf[5] = 0x16;
 buf[6] = 0x01;
 store_cdrom_address(&buf[8], msf, 0);

 buf[13] = 0x16;
 buf[14] = 0xAA;
 store_cdrom_address(&buf[16], msf, curlun->num_sectors);
 return 20;
}
