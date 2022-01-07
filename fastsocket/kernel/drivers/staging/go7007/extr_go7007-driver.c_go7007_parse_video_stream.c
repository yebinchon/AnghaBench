
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct go7007 {int format; int state; int seen_frame; int parse_length; int modet_word; int spinlock; TYPE_1__* active_buf; int active_map; int video_dev; } ;
struct TYPE_2__ {int bytesused; int modet_active; int offset; int frame_offset; } ;


 int GO7007_BUF_SIZE ;
 int const GO7007_FORMAT_MJPEG ;
 int frame_boundary (struct go7007*) ;
 int memset (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int store_byte (TYPE_1__*,int) ;
 int v4l2_info (int ,char*) ;
 int write_bitmap_word (struct go7007*) ;

void go7007_parse_video_stream(struct go7007 *go, u8 *buf, int length)
{
 int i, seq_start_code = -1, frame_start_code = -1;

 spin_lock(&go->spinlock);

 switch (go->format) {
 case 137:
  seq_start_code = 0xB0;
  frame_start_code = 0xB6;
  break;
 case 139:
 case 138:
  seq_start_code = 0xB3;
  frame_start_code = 0x00;
  break;
 }

 for (i = 0; i < length; ++i) {
  if (go->active_buf != ((void*)0) &&
       go->active_buf->bytesused >= GO7007_BUF_SIZE - 3) {
   v4l2_info(go->video_dev, "dropping oversized frame\n");
   go->active_buf->offset -= go->active_buf->bytesused;
   go->active_buf->bytesused = 0;
   go->active_buf->modet_active = 0;
   go->active_buf = ((void*)0);
  }

  switch (go->state) {
  case 133:
   switch (buf[i]) {
   case 0x00:
    go->state = 136;
    break;
   case 0xFF:
    go->state = 132;
    break;
   default:
    store_byte(go->active_buf, buf[i]);
    break;
   }
   break;
  case 136:
   switch (buf[i]) {
   case 0x00:
    go->state = 135;
    break;
   case 0xFF:
    store_byte(go->active_buf, 0x00);
    go->state = 132;
    break;
   default:
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, buf[i]);
    go->state = 133;
    break;
   }
   break;
  case 135:
   switch (buf[i]) {
   case 0x00:
    store_byte(go->active_buf, 0x00);

    break;
   case 0x01:
    go->state = 134;
    break;
   case 0xFF:
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, 0x00);
    go->state = 132;
    break;
   default:
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, buf[i]);
    go->state = 133;
    break;
   }
   break;
  case 134:


   if ((go->format == 139 ||
     go->format == 138 ||
     go->format == 137) &&
     (buf[i] == seq_start_code ||
      buf[i] == 0xB8 ||
      buf[i] == frame_start_code)) {
    if (go->active_buf == ((void*)0) || go->seen_frame)
     frame_boundary(go);
    if (buf[i] == frame_start_code) {
     if (go->active_buf != ((void*)0))
      go->active_buf->frame_offset =
       go->active_buf->offset;
     go->seen_frame = 1;
    } else {
     go->seen_frame = 0;
    }
   }


   switch (buf[i]) {
   case 0xF5:
    go->parse_length = 12;
    go->state = 130;
    break;
   case 0xF6:
    go->state = 129;
    break;
   case 0xF8:
    go->parse_length = 0;
    memset(go->active_map, 0,
      sizeof(go->active_map));
    go->state = 131;
    break;
   case 0xFF:
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, 0x01);
    go->state = 132;
    break;
   default:
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, 0x00);
    store_byte(go->active_buf, 0x01);
    store_byte(go->active_buf, buf[i]);
    go->state = 133;
    break;
   }
   break;
  case 132:
   switch (buf[i]) {
   case 0x00:
    store_byte(go->active_buf, 0xFF);
    go->state = 136;
    break;
   case 0xFF:
    store_byte(go->active_buf, 0xFF);

    break;
   case 0xD8:
    if (go->format == GO7007_FORMAT_MJPEG)
     frame_boundary(go);

   default:
    store_byte(go->active_buf, 0xFF);
    store_byte(go->active_buf, buf[i]);
    go->state = 133;
    break;
   }
   break;
  case 129:
   go->parse_length = buf[i] << 8;
   go->state = 128;
   break;
  case 128:
   go->parse_length |= buf[i];
   if (go->parse_length > 0)
    go->state = 130;
   else
    go->state = 133;
   break;
  case 131:
   if (go->parse_length < 204) {
    if (go->parse_length & 1) {
     go->modet_word |= buf[i];
     write_bitmap_word(go);
    } else
     go->modet_word = buf[i] << 8;
   } else if (go->parse_length == 207 && go->active_buf) {
    go->active_buf->modet_active = buf[i];
   }
   if (++go->parse_length == 208)
    go->state = 133;
   break;
  case 130:
   if (--go->parse_length == 0)
    go->state = 133;
   break;
  }
 }

 spin_unlock(&go->spinlock);
}
