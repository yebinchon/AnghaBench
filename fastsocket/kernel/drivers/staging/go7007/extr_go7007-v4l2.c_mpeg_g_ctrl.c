
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct go7007 {int bitrate; int closed_gop; int gop_size; int aspect_ratio; int format; int dvd_mode; } ;


 int EINVAL ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_DVD ;
 int V4L2_MPEG_STREAM_TYPE_MPEG_ELEM ;
 int V4L2_MPEG_VIDEO_ASPECT_16x9 ;
 int V4L2_MPEG_VIDEO_ASPECT_1x1 ;
 int V4L2_MPEG_VIDEO_ASPECT_4x3 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_4 ;

__attribute__((used)) static int mpeg_g_ctrl(struct v4l2_control *ctrl, struct go7007 *go)
{
 switch (ctrl->id) {
 case 133:
  if (go->dvd_mode)
   ctrl->value = V4L2_MPEG_STREAM_TYPE_MPEG2_DVD;
  else
   ctrl->value = V4L2_MPEG_STREAM_TYPE_MPEG_ELEM;
  break;
 case 130:
  switch (go->format) {
  case 139:
   ctrl->value = V4L2_MPEG_VIDEO_ENCODING_MPEG_1;
   break;
  case 138:
   ctrl->value = V4L2_MPEG_VIDEO_ENCODING_MPEG_2;
   break;
  case 137:
   ctrl->value = V4L2_MPEG_VIDEO_ENCODING_MPEG_4;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 132:
  switch (go->aspect_ratio) {
  case 135:
   ctrl->value = V4L2_MPEG_VIDEO_ASPECT_1x1;
   break;
  case 134:
   ctrl->value = V4L2_MPEG_VIDEO_ASPECT_4x3;
   break;
  case 136:
   ctrl->value = V4L2_MPEG_VIDEO_ASPECT_16x9;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 128:
  ctrl->value = go->gop_size;
  break;
 case 129:
  ctrl->value = go->closed_gop;
  break;
 case 131:
  ctrl->value = go->bitrate;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
