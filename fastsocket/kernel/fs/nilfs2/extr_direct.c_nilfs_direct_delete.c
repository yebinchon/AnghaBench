
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; } ;
struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
typedef int __u64 ;


 int ENOENT ;
 scalar_t__ NILFS_BMAP_INVALID_PTR ;
 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 int NILFS_DIRECT_KEY_MAX ;
 int nilfs_bmap_commit_end_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_bmap_prepare_end_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 int nilfs_bmap_sub_blocks (struct nilfs_bmap*,int) ;
 scalar_t__ nilfs_direct_get_ptr (struct nilfs_direct*,int ) ;
 int nilfs_direct_set_ptr (struct nilfs_direct*,int ,scalar_t__) ;

__attribute__((used)) static int nilfs_direct_delete(struct nilfs_bmap *bmap, __u64 key)
{
 struct nilfs_direct *direct = (struct nilfs_direct *)bmap;
 union nilfs_bmap_ptr_req req;
 struct inode *dat;
 int ret;

 if (key > NILFS_DIRECT_KEY_MAX ||
     nilfs_direct_get_ptr(direct, key) == NILFS_BMAP_INVALID_PTR)
  return -ENOENT;

 dat = NILFS_BMAP_USE_VBN(bmap) ? nilfs_bmap_get_dat(bmap) : ((void*)0);
 req.bpr_ptr = nilfs_direct_get_ptr(direct, key);

 ret = nilfs_bmap_prepare_end_ptr(bmap, &req, dat);
 if (!ret) {
  nilfs_bmap_commit_end_ptr(bmap, &req, dat);
  nilfs_direct_set_ptr(direct, key, NILFS_BMAP_INVALID_PTR);
  nilfs_bmap_sub_blocks(bmap, 1);
 }
 return ret;
}
