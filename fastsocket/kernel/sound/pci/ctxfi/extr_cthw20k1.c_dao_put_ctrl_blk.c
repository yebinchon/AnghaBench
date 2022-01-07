
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dao_ctrl_blk {int dummy; } ;


 int kfree (struct dao_ctrl_blk*) ;

__attribute__((used)) static int dao_put_ctrl_blk(void *blk)
{
 kfree((struct dao_ctrl_blk *)blk);

 return 0;
}
