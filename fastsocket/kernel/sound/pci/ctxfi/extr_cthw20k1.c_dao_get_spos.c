
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dao_ctrl_blk {unsigned int spos; } ;



__attribute__((used)) static int dao_get_spos(void *blk, unsigned int *spos)
{
 *spos = ((struct dao_ctrl_blk *)blk)->spos;
 return 0;
}
