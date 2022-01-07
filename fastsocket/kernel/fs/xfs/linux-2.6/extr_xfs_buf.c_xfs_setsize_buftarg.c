
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_buftarg_t ;


 int xfs_setsize_buftarg_flags (int *,unsigned int,unsigned int,int) ;

int
xfs_setsize_buftarg(
 xfs_buftarg_t *btp,
 unsigned int blocksize,
 unsigned int sectorsize)
{
 return xfs_setsize_buftarg_flags(btp, blocksize, sectorsize, 1);
}
