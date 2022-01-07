
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct go7007 {int bitrate; int gop_size; int pali; int closed_gop; int seq_header_enable; int gop_header_enable; int dvd_mode; int aspect_ratio; void* format; int repeat_seqhead; scalar_t__ streaming; } ;


 int EBUSY ;
 int EINVAL ;
 void* GO7007_FORMAT_MJPEG ;
 void* GO7007_FORMAT_MPEG1 ;
 void* GO7007_FORMAT_MPEG2 ;
 void* GO7007_FORMAT_MPEG4 ;
 int GO7007_RATIO_16_9 ;
 int GO7007_RATIO_1_1 ;
 int GO7007_RATIO_4_3 ;
__attribute__((used)) static int mpeg_s_ctrl(struct v4l2_control *ctrl, struct go7007 *go)
{

 if (go->streaming)
  return -EBUSY;

 switch (ctrl->id) {
 case 142:
  switch (ctrl->value) {
  case 136:
   go->format = GO7007_FORMAT_MPEG2;
   go->bitrate = 9800000;
   go->gop_size = 15;
   go->pali = 0x48;
   go->closed_gop = 1;
   go->repeat_seqhead = 0;
   go->seq_header_enable = 1;
   go->gop_header_enable = 1;
   go->dvd_mode = 1;
   break;
  case 135:

   break;
  default:
   return -EINVAL;
  }
  break;
 case 139:
  switch (ctrl->value) {
  case 130:
   go->format = GO7007_FORMAT_MPEG1;
   go->pali = 0;
   break;
  case 129:
   go->format = GO7007_FORMAT_MPEG2;



    go->pali = 0x48;
   break;
  case 128:
   go->format = GO7007_FORMAT_MPEG4;



    go->pali = 0xf5;
   break;
  default:
   return -EINVAL;
  }
  go->gop_header_enable =

           1;



   go->repeat_seqhead = 0;
  go->dvd_mode = 0;
  break;
 case 141:
  if (go->format == GO7007_FORMAT_MJPEG)
   return -EINVAL;
  switch (ctrl->value) {
  case 133:
   go->aspect_ratio = GO7007_RATIO_1_1;
   break;
  case 131:
   go->aspect_ratio = GO7007_RATIO_4_3;
   break;
  case 134:
   go->aspect_ratio = GO7007_RATIO_16_9;
   break;
  case 132:
  default:
   return -EINVAL;
  }
  break;
 case 137:
  if (ctrl->value < 0 || ctrl->value > 34)
   return -EINVAL;
  go->gop_size = ctrl->value;
  break;
 case 138:
  if (ctrl->value != 0 && ctrl->value != 1)
   return -EINVAL;
  go->closed_gop = ctrl->value;
  break;
 case 140:

  if (ctrl->value < 64000 || ctrl->value > 10000000)
   return -EINVAL;
  go->bitrate = ctrl->value;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
