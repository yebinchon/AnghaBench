
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct unallocSpaceEntry {int dummy; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct extent_position {int offset; int * bh; int block; } ;
typedef int int8_t ;
struct TYPE_4__ {int i_location; } ;
struct TYPE_3__ {unsigned int s_blocksize_bits; } ;


 TYPE_2__* UDF_I (struct inode*) ;
 int brelse (int *) ;
 int lock_kernel () ;
 int udf_next_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,unsigned int*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static unsigned int udf_count_free_table(struct super_block *sb,
      struct inode *table)
{
 unsigned int accum = 0;
 uint32_t elen;
 struct kernel_lb_addr eloc;
 int8_t etype;
 struct extent_position epos;

 lock_kernel();

 epos.block = UDF_I(table)->i_location;
 epos.offset = sizeof(struct unallocSpaceEntry);
 epos.bh = ((void*)0);

 while ((etype = udf_next_aext(table, &epos, &eloc, &elen, 1)) != -1)
  accum += (elen >> table->i_sb->s_blocksize_bits);

 brelse(epos.bh);

 unlock_kernel();

 return accum;
}
