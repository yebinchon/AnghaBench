
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int low; } ;
struct TYPE_9__ {int g729_loaded; int ts85_loaded; } ;
struct TYPE_8__ {int low; } ;
struct TYPE_7__ {int low; } ;
struct TYPE_11__ {int play_codec; int play_frame_size; int play_mode; int write_buffer_size; int * write_buffer; TYPE_4__ baseframe; TYPE_3__ flags; TYPE_2__ dsp; TYPE_1__ ver; } ;
typedef TYPE_5__ IXJ ;
 int ixj_convert_loaded ;
 int kfree (int *) ;

__attribute__((used)) static int set_play_codec(IXJ *j, int rate)
{
 int retval = 0;

 j->play_codec = rate;

 switch (rate) {
 case 138:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->play_frame_size = 12;
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 139:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->play_frame_size = 10;
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 130:
  if (j->dsp.low == 0x20 || j->flags.ts85_loaded) {
   j->play_frame_size = 16;
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 131:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->play_frame_size = 9;
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 132:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->play_frame_size = 8;
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 137:
  if (j->dsp.low != 0x20) {
   j->play_frame_size = 48;
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 136:
  if (j->dsp.low != 0x20) {
   if (!j->flags.g729_loaded) {
    retval = 1;
    break;
   }
   switch (j->baseframe.low) {
   case 0xA0:
    j->play_frame_size = 10;
    break;
   case 0x50:
    j->play_frame_size = 5;
    break;
   default:
    j->play_frame_size = 15;
    break;
   }
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 135:
  if (j->dsp.low != 0x20) {
   if (!j->flags.g729_loaded) {
    retval = 1;
    break;
   }
   switch (j->baseframe.low) {
   case 0xA0:
    j->play_frame_size = 12;
    break;
   case 0x50:
    j->play_frame_size = 6;
    break;
   default:
    j->play_frame_size = 18;
    break;
   }
   j->play_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 129:
  switch (j->baseframe.low) {
  case 0xA0:
   j->play_frame_size = 80;
   break;
  case 0x50:
   j->play_frame_size = 40;
   break;
  default:
   j->play_frame_size = 120;
   break;
  }
  j->play_mode = 2;
  break;
 case 140:
  switch (j->baseframe.low) {
  case 0xA0:
   j->play_frame_size = 80;
   break;
  case 0x50:
   j->play_frame_size = 40;
   break;
  default:
   j->play_frame_size = 120;
   break;
  }
  j->play_mode = 2;
  break;
 case 134:
  switch (j->baseframe.low) {
  case 0xA0:
   j->play_frame_size = 160;
   break;
  case 0x50:
   j->play_frame_size = 80;
   break;
  default:
   j->play_frame_size = 240;
   break;
  }
  j->play_mode = 6;
  break;
 case 133:
  switch (j->baseframe.low) {
  case 0xA0:
   j->play_frame_size = 80;
   break;
  case 0x50:
   j->play_frame_size = 40;
   break;
  default:
   j->play_frame_size = 120;
   break;
  }
  j->play_mode = 4;
  break;
 case 128:
  switch (j->baseframe.low) {
  case 0xA0:
   j->play_frame_size = 80;
   break;
  case 0x50:
   j->play_frame_size = 40;
   break;
  default:
   j->play_frame_size = 120;
   break;
  }
  j->play_mode = 5;
  break;
 default:
  kfree(j->write_buffer);
  j->play_frame_size = 0;
  j->play_mode = -1;
  j->write_buffer = ((void*)0);
  j->write_buffer_size = 0;
  retval = 1;
  break;
 }
 return retval;
}
