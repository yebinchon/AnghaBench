
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
struct TYPE_11__ {int rec_codec; int rec_frame_size; int rec_mode; int read_buffer_size; int * read_buffer; TYPE_4__ baseframe; TYPE_3__ flags; TYPE_2__ dsp; TYPE_1__ ver; } ;
typedef TYPE_5__ IXJ ;
 int ixj_convert_loaded ;
 int kfree (int *) ;

__attribute__((used)) static int set_rec_codec(IXJ *j, int rate)
{
 int retval = 0;

 j->rec_codec = rate;

 switch (rate) {
 case 138:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->rec_frame_size = 12;
   j->rec_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 139:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->rec_frame_size = 10;
   j->rec_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 130:
  if (j->dsp.low == 0x20 || j->flags.ts85_loaded) {
   j->rec_frame_size = 16;
   j->rec_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 131:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->rec_frame_size = 9;
   j->rec_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 132:
  if (j->ver.low != 0x12 || ixj_convert_loaded) {
   j->rec_frame_size = 8;
   j->rec_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 137:
  if (j->dsp.low != 0x20) {
   j->rec_frame_size = 48;
   j->rec_mode = 0;
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
    j->rec_frame_size = 10;
    break;
   case 0x50:
    j->rec_frame_size = 5;
    break;
   default:
    j->rec_frame_size = 15;
    break;
   }
   j->rec_mode = 0;
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
    j->rec_frame_size = 12;
    break;
   case 0x50:
    j->rec_frame_size = 6;
    break;
   default:
    j->rec_frame_size = 18;
    break;
   }
   j->rec_mode = 0;
  } else {
   retval = 1;
  }
  break;
 case 129:
  switch (j->baseframe.low) {
  case 0xA0:
   j->rec_frame_size = 80;
   break;
  case 0x50:
   j->rec_frame_size = 40;
   break;
  default:
   j->rec_frame_size = 120;
   break;
  }
  j->rec_mode = 4;
  break;
 case 140:
  switch (j->baseframe.low) {
  case 0xA0:
   j->rec_frame_size = 80;
   break;
  case 0x50:
   j->rec_frame_size = 40;
   break;
  default:
   j->rec_frame_size = 120;
   break;
  }
  j->rec_mode = 4;
  break;
 case 134:
  switch (j->baseframe.low) {
  case 0xA0:
   j->rec_frame_size = 160;
   break;
  case 0x50:
   j->rec_frame_size = 80;
   break;
  default:
   j->rec_frame_size = 240;
   break;
  }
  j->rec_mode = 5;
  break;
 case 133:
  switch (j->baseframe.low) {
  case 0xA0:
   j->rec_frame_size = 80;
   break;
  case 0x50:
   j->rec_frame_size = 40;
   break;
  default:
   j->rec_frame_size = 120;
   break;
  }
  j->rec_mode = 6;
  break;
 case 128:
  switch (j->baseframe.low) {
  case 0xA0:
   j->rec_frame_size = 80;
   break;
  case 0x50:
   j->rec_frame_size = 40;
   break;
  default:
   j->rec_frame_size = 120;
   break;
  }
  j->rec_mode = 7;
  break;
 default:
  kfree(j->read_buffer);
  j->rec_frame_size = 0;
  j->rec_mode = -1;
  j->read_buffer = ((void*)0);
  j->read_buffer_size = 0;
  retval = 1;
  break;
 }
 return retval;
}
