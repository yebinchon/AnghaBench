
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_sevsegdev {int shadow_power; int textlength; unsigned char* text; int textmode; int* decimals; TYPE_1__* udev; } ;
typedef int gfp_t ;
struct TYPE_3__ {int dev; } ;


 int MAXLEN ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int,unsigned char*,int,int) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static void update_display_visual(struct usb_sevsegdev *mydev, gfp_t mf)
{
 int rc;
 int i;
 unsigned char *buffer;
 u8 decimals = 0;

 if(mydev->shadow_power != 1)
  return;

 buffer = kzalloc(MAXLEN, mf);
 if (!buffer) {
  dev_err(&mydev->udev->dev, "out of memory\n");
  return;
 }


 for (i = 0; i < mydev->textlength; i++)
  buffer[i] = mydev->text[mydev->textlength-1-i];

 rc = usb_control_msg(mydev->udev,
   usb_sndctrlpipe(mydev->udev, 0),
   0x12,
   0x48,
   (85 * 0x100) + 10,
   (0 * 0x100) + mydev->textmode,
   buffer,
   mydev->textlength,
   2000);

 if (rc < 0)
  dev_dbg(&mydev->udev->dev, "write retval = %d\n", rc);

 kfree(buffer);


 for (i = 0; i < sizeof(mydev->decimals); i++)
  decimals |= mydev->decimals[i] << i;

 rc = usb_control_msg(mydev->udev,
   usb_sndctrlpipe(mydev->udev, 0),
   0x12,
   0x48,
   (86 * 0x100) + 10,
   (0 * 0x100) + decimals,
   ((void*)0),
   0,
   2000);

 if (rc < 0)
  dev_dbg(&mydev->udev->dev, "decimal retval = %d\n", rc);
}
