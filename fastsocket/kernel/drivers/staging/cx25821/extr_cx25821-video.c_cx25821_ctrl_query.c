
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ id; } ;


 int CX25821_CTLS ;
 int EINVAL ;
 scalar_t__ V4L2_CID_BASE ;
 scalar_t__ V4L2_CID_LASTP1 ;
 struct v4l2_queryctrl* cx25821_ctls ;
 struct v4l2_queryctrl no_ctl ;

__attribute__((used)) static int cx25821_ctrl_query(struct v4l2_queryctrl *qctrl)
{
 int i;

 if (qctrl->id < V4L2_CID_BASE || qctrl->id >= V4L2_CID_LASTP1)
  return -EINVAL;
 for (i = 0; i < CX25821_CTLS; i++)
  if (cx25821_ctls[i].id == qctrl->id)
   break;
 if (i == CX25821_CTLS) {
  *qctrl = no_ctl;
  return 0;
 }
 *qctrl = cx25821_ctls[i];
 return 0;
}
