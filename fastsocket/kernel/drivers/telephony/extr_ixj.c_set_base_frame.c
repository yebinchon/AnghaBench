
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int high; int low; } ;
struct TYPE_11__ {int high; int low; } ;
struct TYPE_10__ {int low; } ;
struct TYPE_13__ {int cid_play_aec_level; TYPE_3__ baseframe; TYPE_2__ ssr; TYPE_1__ dsp; int aec_level; } ;
typedef TYPE_4__ IXJ ;


 int aec_stop (TYPE_4__*) ;
 scalar_t__ idle (TYPE_4__*) ;
 scalar_t__ ixj_WriteDSPCommand (unsigned short,TYPE_4__*) ;
 int ixj_aec_start (TYPE_4__*,int ) ;

__attribute__((used)) static int set_base_frame(IXJ *j, int size)
{
 unsigned short cmd;
 int cnt;

 idle(j);
 j->cid_play_aec_level = j->aec_level;
 aec_stop(j);
 for (cnt = 0; cnt < 10; cnt++) {
  if (idle(j))
   break;
 }
 if (j->ssr.high || j->ssr.low)
  return -1;
 if (j->dsp.low != 0x20) {
  switch (size) {
  case 30:
   cmd = 0x07F0;

   break;
  case 20:
   cmd = 0x07A0;

   break;
  case 10:
   cmd = 0x0750;

   break;
  default:
   return -1;
  }
 } else {
  if (size == 30)
   return size;
  else
   return -1;
 }
 if (ixj_WriteDSPCommand(cmd, j)) {
  j->baseframe.high = j->baseframe.low = 0xFF;
  return -1;
 } else {
  j->baseframe.high = j->ssr.high;
  j->baseframe.low = j->ssr.low;

  if(j->baseframe.high == 0x00 && j->baseframe.low == 0x00) {
   return -1;
  }
 }
 ixj_aec_start(j, j->cid_play_aec_level);
 return size;
}
