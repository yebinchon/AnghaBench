
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int usb_stor_bulk_transfer_sglist (struct us_data*,unsigned int,int ,int ,scalar_t__,unsigned int*) ;

int usb_stor_bulk_srb(struct us_data* us, unsigned int pipe,
        struct scsi_cmnd* srb)
{
 unsigned int partial;
 int result = usb_stor_bulk_transfer_sglist(us, pipe, scsi_sglist(srb),
          scsi_sg_count(srb), scsi_bufflen(srb),
          &partial);

 scsi_set_resid(srb, scsi_bufflen(srb) - partial);
 return result;
}
