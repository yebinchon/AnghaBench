
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atxctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct daio_mgr_ctrl_blk {TYPE_2__ dirty; int * txctl; } ;


 int ATXCTL_EN ;
 int set_field (int *,int ,int) ;

__attribute__((used)) static int daio_mgr_enb_dao(void *blk, unsigned int idx)
{
 struct daio_mgr_ctrl_blk *ctl = blk;

 set_field(&ctl->txctl[idx], ATXCTL_EN, 1);
 ctl->dirty.bf.atxctl |= (0x1 << idx);
 return 0;
}
