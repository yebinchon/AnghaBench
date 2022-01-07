
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {struct nilfs_super_block** ns_sbp; struct buffer_head** ns_sbh; } ;
struct nilfs_super_block {int dummy; } ;
struct buffer_head {int dummy; } ;



void nilfs_swap_super_block(struct the_nilfs *nilfs)
{
 struct buffer_head *tsbh = nilfs->ns_sbh[0];
 struct nilfs_super_block *tsbp = nilfs->ns_sbp[0];

 nilfs->ns_sbh[0] = nilfs->ns_sbh[1];
 nilfs->ns_sbp[0] = nilfs->ns_sbp[1];
 nilfs->ns_sbh[1] = tsbh;
 nilfs->ns_sbp[1] = tsbp;
}
