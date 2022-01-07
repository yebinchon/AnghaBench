
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_sb; } ;
struct extent_position {int bh; } ;
typedef int sector_t ;


 int EXT_RECORDED_ALLOCATED ;
 int UDF_FLAG_VARCONV ;
 scalar_t__ UDF_QUERY_FLAG (int ,int ) ;
 int brelse (int ) ;
 int inode_bmap (struct inode*,int ,struct extent_position*,struct kernel_lb_addr*,int *,int *) ;
 int lock_kernel () ;
 long udf_fixed_to_variable (int) ;
 int udf_get_lb_pblock (int ,struct kernel_lb_addr*,int ) ;
 int unlock_kernel () ;

long udf_block_map(struct inode *inode, sector_t block)
{
 struct kernel_lb_addr eloc;
 uint32_t elen;
 sector_t offset;
 struct extent_position epos = {};
 int ret;

 lock_kernel();

 if (inode_bmap(inode, block, &epos, &eloc, &elen, &offset) ==
      (EXT_RECORDED_ALLOCATED >> 30))
  ret = udf_get_lb_pblock(inode->i_sb, &eloc, offset);
 else
  ret = 0;

 unlock_kernel();
 brelse(epos.bh);

 if (UDF_QUERY_FLAG(inode->i_sb, UDF_FLAG_VARCONV))
  return udf_fixed_to_variable(ret);
 else
  return ret;
}
