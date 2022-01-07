
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_palloc_freev (struct inode*,int *,size_t) ;

int nilfs_dat_freev(struct inode *dat, __u64 *vblocknrs, size_t nitems)
{
 return nilfs_palloc_freev(dat, vblocknrs, nitems);
}
