
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct super_block {int s_blocksize_bits; TYPE_2__* s_bdev; } ;
struct kernel_lb_addr {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {scalar_t__ i_size; } ;


 scalar_t__ TAG_IDENT_AVDP ;
 int UDF_FLAG_VARCONV ;
 scalar_t__ UDF_QUERY_FLAG (struct super_block*,int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ udf_fixed_to_variable (int ) ;
 int udf_load_sequence (struct super_block*,struct buffer_head*,struct kernel_lb_addr*) ;
 struct buffer_head* udf_read_tagged (struct super_block*,int ,int ,scalar_t__*) ;

__attribute__((used)) static int udf_check_anchor_block(struct super_block *sb, sector_t block,
      struct kernel_lb_addr *fileset)
{
 struct buffer_head *bh;
 uint16_t ident;
 int ret;

 if (UDF_QUERY_FLAG(sb, UDF_FLAG_VARCONV) &&
     udf_fixed_to_variable(block) >=
     sb->s_bdev->bd_inode->i_size >> sb->s_blocksize_bits)
  return 0;

 bh = udf_read_tagged(sb, block, block, &ident);
 if (!bh)
  return 0;
 if (ident != TAG_IDENT_AVDP) {
  brelse(bh);
  return 0;
 }
 ret = udf_load_sequence(sb, bh, fileset);
 brelse(bh);
 return ret;
}
