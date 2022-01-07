
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spoctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct daio_mgr_ctrl_blk {TYPE_2__ dirty; int spoctl; } ;


 unsigned int SPOCTL_LIV ;
 unsigned int SPOCTL_OS ;
 unsigned int SPOCTL_RIV ;
 unsigned int SPOCTL_SR ;
 int set_field (int *,unsigned int,int) ;

__attribute__((used)) static int daio_mgr_dao_init(void *blk, unsigned int idx, unsigned int conf)
{
 struct daio_mgr_ctrl_blk *ctl = blk;

 if (idx < 4) {

  switch ((conf & 0x7)) {
  case 0:
   set_field(&ctl->spoctl, SPOCTL_SR << (idx*8), 3);
   break;
  case 1:
   set_field(&ctl->spoctl, SPOCTL_SR << (idx*8), 0);
   break;
  case 2:
   set_field(&ctl->spoctl, SPOCTL_SR << (idx*8), 1);
   break;
  case 4:
   set_field(&ctl->spoctl, SPOCTL_SR << (idx*8), 2);
   break;
  default:
   break;
  }
  set_field(&ctl->spoctl, SPOCTL_LIV << (idx*8),
     (conf >> 4) & 0x1);
  set_field(&ctl->spoctl, SPOCTL_RIV << (idx*8),
     (conf >> 4) & 0x1);
  set_field(&ctl->spoctl, SPOCTL_OS << (idx*8),
     ((conf >> 3) & 0x1) ? 2 : 2);

  ctl->dirty.bf.spoctl |= (0x1 << idx);
 } else {


 }
 return 0;
}
