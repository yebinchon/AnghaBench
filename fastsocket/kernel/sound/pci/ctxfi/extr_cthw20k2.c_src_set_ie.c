
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct src_rsc_ctrl_blk {TYPE_2__ dirty; int ctl; } ;


 int SRCCTL_IE ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int src_set_ie(void *blk, unsigned int ie)
{
 struct src_rsc_ctrl_blk *ctl = blk;

 set_field(&ctl->ctl, SRCCTL_IE, ie);
 ctl->dirty.bf.ctl = 1;
 return 0;
}
