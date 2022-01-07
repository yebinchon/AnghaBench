
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_queryctrl {int id; } ;


 int EINVAL ;







 int V4L2_MPEG_STREAM_TYPE_MPEG2_DVD ;
 int V4L2_MPEG_STREAM_TYPE_MPEG_ELEM ;
 int V4L2_MPEG_VIDEO_ASPECT_16x9 ;
 int V4L2_MPEG_VIDEO_ASPECT_1x1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_4 ;
 int v4l2_ctrl_next (int const**,int ) ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int mpeg_queryctrl(struct v4l2_queryctrl *ctrl)
{
 static const u32 mpeg_ctrls[] = {
  134,
  133,
  130,
  132,
  128,
  129,
  131,
  0
 };
 static const u32 *ctrl_classes[] = {
  mpeg_ctrls,
  ((void*)0)
 };

 ctrl->id = v4l2_ctrl_next(ctrl_classes, ctrl->id);

 switch (ctrl->id) {
 case 134:
  return v4l2_ctrl_query_fill(ctrl, 0, 0, 0, 0);
 case 133:
  return v4l2_ctrl_query_fill(ctrl,
    V4L2_MPEG_STREAM_TYPE_MPEG2_DVD,
    V4L2_MPEG_STREAM_TYPE_MPEG_ELEM, 1,
    V4L2_MPEG_STREAM_TYPE_MPEG_ELEM);
 case 130:
  return v4l2_ctrl_query_fill(ctrl,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_1,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_4, 1,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_2);
 case 132:
  return v4l2_ctrl_query_fill(ctrl,
    V4L2_MPEG_VIDEO_ASPECT_1x1,
    V4L2_MPEG_VIDEO_ASPECT_16x9, 1,
    V4L2_MPEG_VIDEO_ASPECT_1x1);
 case 128:
  return v4l2_ctrl_query_fill(ctrl, 0, 34, 1, 15);
 case 129:
  return v4l2_ctrl_query_fill(ctrl, 0, 1, 1, 0);
 case 131:
  return v4l2_ctrl_query_fill(ctrl,
    64000,
    10000000, 1,
    1500000);
 default:
  return -EINVAL;
 }
 return 0;
}
