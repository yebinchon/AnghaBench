
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int amoplo; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct amixer_rsc_ctrl_blk {TYPE_2__ dirty; int amoplo; } ;


 int AMOPLO_X ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int amixer_set_x(void *blk, unsigned int x)
{
 struct amixer_rsc_ctrl_blk *ctl = blk;

 set_field(&ctl->amoplo, AMOPLO_X, x);
 ctl->dirty.bf.amoplo = 1;
 return 0;
}
