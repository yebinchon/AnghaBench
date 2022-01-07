
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {char* name; TYPE_2__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_6__ {TYPE_1__* udev; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int dev; } ;


 int GO7007_BOARD_HAS_TUNER ;
 int KERNEL_VERSION (int ,int,int) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_3__* dev ;
 char* dev_name (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 strlcpy(cap->driver, "go7007", sizeof(cap->driver));
 strlcpy(cap->card, go->name, sizeof(cap->card));




 cap->version = KERNEL_VERSION(0, 9, 8);

 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
       V4L2_CAP_STREAMING;

 if (go->board_info->flags & GO7007_BOARD_HAS_TUNER)
  cap->capabilities |= V4L2_CAP_TUNER;

 return 0;
}
