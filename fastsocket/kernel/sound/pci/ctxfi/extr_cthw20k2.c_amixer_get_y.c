
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amixer_rsc_ctrl_blk {int amoplo; } ;


 int AMOPLO_Y ;
 int get_field (int ,int ) ;

__attribute__((used)) static int amixer_get_y(void *blk)
{
 struct amixer_rsc_ctrl_blk *ctl = blk;

 return get_field(ctl->amoplo, AMOPLO_Y);
}
