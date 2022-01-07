
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;


 int UDF_FLAG_VARCONV ;
 scalar_t__ UDF_QUERY_FLAG (struct super_block*,int ) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int udf_fixed_to_variable (int) ;

struct buffer_head *udf_tread(struct super_block *sb, int block)
{
 if (UDF_QUERY_FLAG(sb, UDF_FLAG_VARCONV))
  return sb_bread(sb, udf_fixed_to_variable(block));
 else
  return sb_bread(sb, block);
}
