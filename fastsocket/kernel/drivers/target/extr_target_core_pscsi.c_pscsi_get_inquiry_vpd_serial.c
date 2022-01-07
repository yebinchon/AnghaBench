
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_wwn {TYPE_1__* t10_dev; int * unit_serial; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int dev_flags; } ;


 int DF_FIRMWARE_VPD_UNIT_SERIAL ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int HZ ;
 unsigned char INQUIRY ;
 int INQUIRY_VPD_SERIAL_LEN ;
 int MAX_COMMAND_SIZE ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memset (unsigned char*,int ,int) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,int,int *,int ,int,int *) ;
 int snprintf (int *,int,char*,unsigned char*) ;

__attribute__((used)) static int
pscsi_get_inquiry_vpd_serial(struct scsi_device *sdev, struct t10_wwn *wwn)
{
 unsigned char cdb[MAX_COMMAND_SIZE], *buf;
 int ret;

 buf = kzalloc(INQUIRY_VPD_SERIAL_LEN, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 memset(cdb, 0, MAX_COMMAND_SIZE);
 cdb[0] = INQUIRY;
 cdb[1] = 0x01;
 cdb[2] = 0x80;
 cdb[3] = (INQUIRY_VPD_SERIAL_LEN >> 8) & 0xff;
 cdb[4] = (INQUIRY_VPD_SERIAL_LEN & 0xff);

 ret = scsi_execute_req(sdev, cdb, DMA_FROM_DEVICE, buf,
         INQUIRY_VPD_SERIAL_LEN, ((void*)0), HZ, 1, ((void*)0));
 if (ret)
  goto out_free;

 snprintf(&wwn->unit_serial[0], INQUIRY_VPD_SERIAL_LEN, "%s", &buf[4]);

 wwn->t10_dev->dev_flags |= DF_FIRMWARE_VPD_UNIT_SERIAL;

 kfree(buf);
 return 0;

out_free:
 kfree(buf);
 return -EPERM;
}
