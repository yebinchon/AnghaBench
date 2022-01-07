
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx25821_fh {struct cx25821_dev* dev; } ;
struct cx25821_dev {size_t board; scalar_t__ tuner_type; int pci; } ;
struct TYPE_2__ {int name; } ;


 int CX25821_VERSION_CODE ;
 scalar_t__ UNSET ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_1__* cx25821_boards ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

int vidioc_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
{
 struct cx25821_dev *dev = ((struct cx25821_fh *)priv)->dev;

 strcpy(cap->driver, "cx25821");
 strlcpy(cap->card, cx25821_boards[dev->board].name, sizeof(cap->card));
 sprintf(cap->bus_info, "PCIe:%s", pci_name(dev->pci));
 cap->version = CX25821_VERSION_CODE;
 cap->capabilities =
     V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE | V4L2_CAP_STREAMING;
 if (UNSET != dev->tuner_type)
  cap->capabilities |= V4L2_CAP_TUNER;
 return 0;
}
