
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int recording; scalar_t__ playing; } ;
struct TYPE_8__ {int low; } ;
struct TYPE_10__ {int rec_codec; int rec_mode; int rec_frame_size; int read_buffer_size; int aec_level; TYPE_2__ flags; TYPE_1__ ver; int board; scalar_t__ read_buffer; } ;
typedef TYPE_3__ IXJ ;


 int ENOMEM ;





 int GFP_ATOMIC ;



 scalar_t__ ixj_WriteDSPCommand (unsigned short,TYPE_3__*) ;
 int ixj_aec_start (TYPE_3__*,int ) ;
 int ixj_record_stop (TYPE_3__*) ;
 int ixjdebug ;
 int jiffies ;
 scalar_t__ kmalloc (int,int ) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int ixj_record_start(IXJ *j)
{
 unsigned short cmd = 0x0000;

 if (j->read_buffer) {
  ixj_record_stop(j);
 }
 j->flags.recording = 1;
 ixj_WriteDSPCommand(0x0FE0, j);

 if(ixjdebug & 0x0002)
  printk("IXJ %d Starting Record Codec %d at %ld\n", j->board, j->rec_codec, jiffies);

 if (!j->rec_mode) {
  switch (j->rec_codec) {
  case 134:
   cmd = 0x5131;
   break;
  case 135:
   cmd = 0x5132;
   break;
  case 128:
   cmd = 0x5130;

   break;
  case 129:
   cmd = 0x5133;

   break;
  case 130:
   cmd = 0x5134;

   break;
  case 133:
   cmd = 0x5135;
   break;
  case 132:
  case 131:
   cmd = 0x5136;
   break;
  default:
   return 1;
  }
  if (ixj_WriteDSPCommand(cmd, j))
   return -1;
 }
 if (!j->read_buffer) {
  if (!j->read_buffer)
   j->read_buffer = kmalloc(j->rec_frame_size * 2, GFP_ATOMIC);
  if (!j->read_buffer) {
   printk("Read buffer allocation for ixj board %d failed!\n", j->board);
   return -ENOMEM;
  }
 }
 j->read_buffer_size = j->rec_frame_size * 2;

 if (ixj_WriteDSPCommand(0x5102, j))

  return -1;

 switch (j->rec_mode) {
 case 0:
  cmd = 0x1C03;

  break;
 case 4:
  if (j->ver.low == 0x12) {
   cmd = 0x1E03;

  } else {
   cmd = 0x1E01;

  }
  break;
 case 5:
  if (j->ver.low == 0x12) {
   cmd = 0x1E83;

  } else {
   cmd = 0x1E81;

  }
  break;
 case 6:
  if (j->ver.low == 0x12) {
   cmd = 0x1F03;

  } else {
   cmd = 0x1F01;

  }
  break;
 case 7:
  if (j->ver.low == 0x12) {
   cmd = 0x1F83;
  } else {
   cmd = 0x1F81;
  }
  break;
 }
 if (ixj_WriteDSPCommand(cmd, j))
  return -1;

 if (j->flags.playing) {
  ixj_aec_start(j, j->aec_level);
 }
 return 0;
}
