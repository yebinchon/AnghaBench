
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int i_btnode_cache; } ;


 int EEXIST ;
 TYPE_1__* NILFS_I (struct inode*) ;
 int nilfs_btnode_submit_block (int *,int ,int ,struct buffer_head**,int ) ;

int nilfs_gccache_submit_read_node(struct inode *inode, sector_t pbn,
       __u64 vbn, struct buffer_head **out_bh)
{
 int ret = nilfs_btnode_submit_block(&NILFS_I(inode)->i_btnode_cache,
         vbn ? : pbn, pbn, out_bh, 0);
 if (ret == -EEXIST)
  ret = 0;
 return ret;
}
