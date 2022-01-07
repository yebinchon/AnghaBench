
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ extra; } ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
struct karma_data {int in_storage; } ;


 scalar_t__ READ_10 ;
 int RIO_ENTER_STORAGE ;
 int RIO_LEAVE_STORAGE ;
 int RIO_RESET ;
 scalar_t__ START_STOP ;
 int rio_karma_send_command (int ,struct us_data*) ;
 int usb_stor_Bulk_transport (struct scsi_cmnd*,struct us_data*) ;

__attribute__((used)) static int rio_karma_transport(struct scsi_cmnd *srb, struct us_data *us)
{
 int ret;
 struct karma_data *data = (struct karma_data *) us->extra;

 if (srb->cmnd[0] == READ_10 && !data->in_storage) {
  ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
  if (ret)
   return ret;

  data->in_storage = 1;
  return usb_stor_Bulk_transport(srb, us);
 } else if (srb->cmnd[0] == START_STOP) {
  ret = rio_karma_send_command(RIO_LEAVE_STORAGE, us);
  if (ret)
   return ret;

  data->in_storage = 0;
  return rio_karma_send_command(RIO_RESET, us);
 }
 return usb_stor_Bulk_transport(srb, us);
}
