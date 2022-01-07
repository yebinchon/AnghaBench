
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; int bpr_req; } ;
struct nilfs_bmap {int b_last_allocated_ptr; } ;
struct inode {int dummy; } ;


 int nilfs_dat_prepare_alloc (struct inode*,int *) ;

__attribute__((used)) static inline int nilfs_bmap_prepare_alloc_ptr(struct nilfs_bmap *bmap,
            union nilfs_bmap_ptr_req *req,
            struct inode *dat)
{
 if (dat)
  return nilfs_dat_prepare_alloc(dat, &req->bpr_req);

 req->bpr_ptr = bmap->b_last_allocated_ptr++;
 return 0;
}
