
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_bulk_pipe; int send_bulk_pipe; scalar_t__ iobuf; } ;
struct bulk_cs_wrap {int Length; int CDB; scalar_t__ Lun; scalar_t__ Flags; void* DataTransferLength; scalar_t__ Tag; void* Signature; } ;
struct bulk_cb_wrap {int Length; int CDB; scalar_t__ Lun; scalar_t__ Flags; void* DataTransferLength; scalar_t__ Tag; void* Signature; } ;
typedef int init_string ;


 int EIO ;
 int US_BULK_CB_SIGN ;
 int US_BULK_CB_WRAP_LEN ;
 int US_BULK_CS_WRAP_LEN ;
 int US_DEBUGP (char*) ;
 void* cpu_to_le32 (int ) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,struct bulk_cs_wrap*,int ,unsigned int*) ;

int usb_stor_ucr61s2b_init(struct us_data *us)
{
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap*) us->iobuf;
 struct bulk_cs_wrap *bcs = (struct bulk_cs_wrap*) us->iobuf;
 int res;
 unsigned int partial;
 static char init_string[] = "\xec\x0a\x06\x00$PCCHIPS";

 US_DEBUGP("Sending UCR-61S2B initialization packet...\n");

 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->Tag = 0;
 bcb->DataTransferLength = cpu_to_le32(0);
 bcb->Flags = bcb->Lun = 0;
 bcb->Length = sizeof(init_string) - 1;
 memset(bcb->CDB, 0, sizeof(bcb->CDB));
 memcpy(bcb->CDB, init_string, sizeof(init_string) - 1);

 res = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe, bcb,
   US_BULK_CB_WRAP_LEN, &partial);
 if (res)
  return -EIO;

 US_DEBUGP("Getting status packet...\n");
 res = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe, bcs,
   US_BULK_CS_WRAP_LEN, &partial);
 if (res)
  return -EIO;

 return 0;
}
