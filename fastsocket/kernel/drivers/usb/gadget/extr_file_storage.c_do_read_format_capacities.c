
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lun {int num_sectors; } ;
struct fsg_dev {struct lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;


 int put_unaligned_be32 (int,int*) ;

__attribute__((used)) static int do_read_format_capacities(struct fsg_dev *fsg,
   struct fsg_buffhd *bh)
{
 struct lun *curlun = fsg->curlun;
 u8 *buf = (u8 *) bh->buf;

 buf[0] = buf[1] = buf[2] = 0;
 buf[3] = 8;
 buf += 4;

 put_unaligned_be32(curlun->num_sectors, &buf[0]);

 put_unaligned_be32(512, &buf[4]);
 buf[4] = 0x02;
 return 12;
}
