
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int value; int id; } ;
struct cx25821_dev {int dummy; } ;
struct TYPE_2__ {int default_value; int id; } ;


 int CX25821_CTLS ;
 TYPE_1__* cx25821_ctls ;
 int cx25821_set_control (struct cx25821_dev*,struct v4l2_control*,int) ;

__attribute__((used)) static void init_controls(struct cx25821_dev *dev, int chan_num)
{
 struct v4l2_control ctrl;
 int i;
 for (i = 0; i < CX25821_CTLS; i++) {
  ctrl.id = cx25821_ctls[i].id;
  ctrl.value = cx25821_ctls[i].default_value;

  cx25821_set_control(dev, &ctrl, chan_num);
 }
}
