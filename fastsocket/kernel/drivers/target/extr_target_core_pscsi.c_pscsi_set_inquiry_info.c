
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_wwn {int * revision; int * model; int * vendor; } ;
struct scsi_device {scalar_t__ inquiry_len; unsigned char* inquiry; } ;


 scalar_t__ INQUIRY_LEN ;
 int memcpy (int *,unsigned char*,int) ;

__attribute__((used)) static void
pscsi_set_inquiry_info(struct scsi_device *sdev, struct t10_wwn *wwn)
{
 unsigned char *buf;

 if (sdev->inquiry_len < INQUIRY_LEN)
  return;

 buf = sdev->inquiry;
 if (!buf)
  return;



 memcpy(&wwn->vendor[0], &buf[8], sizeof(wwn->vendor));
 memcpy(&wwn->model[0], &buf[16], sizeof(wwn->model));
 memcpy(&wwn->revision[0], &buf[32], sizeof(wwn->revision));
}
