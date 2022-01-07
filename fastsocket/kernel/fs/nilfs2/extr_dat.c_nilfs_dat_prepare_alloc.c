
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int dummy; } ;
struct inode {int dummy; } ;


 int nilfs_dat_prepare_entry (struct inode*,struct nilfs_palloc_req*,int) ;
 int nilfs_palloc_abort_alloc_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_palloc_prepare_alloc_entry (struct inode*,struct nilfs_palloc_req*) ;

int nilfs_dat_prepare_alloc(struct inode *dat, struct nilfs_palloc_req *req)
{
 int ret;

 ret = nilfs_palloc_prepare_alloc_entry(dat, req);
 if (ret < 0)
  return ret;

 ret = nilfs_dat_prepare_entry(dat, req, 1);
 if (ret < 0)
  nilfs_palloc_abort_alloc_entry(dat, req);

 return ret;
}
