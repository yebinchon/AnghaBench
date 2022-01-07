
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_off_t ;
struct TYPE_4__ {int bt_bdi; } ;
typedef TYPE_1__ xfs_buftarg_t ;


 int XBF_ASYNC ;
 int XBF_DONT_BLOCK ;
 int XBF_READ_AHEAD ;
 int XBF_TRYLOCK ;
 scalar_t__ bdi_read_congested (int ) ;
 int xfs_buf_read (TYPE_1__*,int ,size_t,int) ;

void
xfs_buf_readahead(
 xfs_buftarg_t *target,
 xfs_off_t ioff,
 size_t isize)
{
 if (bdi_read_congested(target->bt_bdi))
  return;

 xfs_buf_read(target, ioff, isize,
       XBF_TRYLOCK|XBF_ASYNC|XBF_READ_AHEAD|XBF_DONT_BLOCK);
}
