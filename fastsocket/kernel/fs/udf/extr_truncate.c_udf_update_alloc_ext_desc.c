
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct udf_sb_info {int s_udfrev; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct extent_position {TYPE_1__* bh; } ;
struct allocExtDesc {int lengthAllocDescs; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int UDF_FLAG_STRICT ;
 int UDF_QUERY_FLAG (struct super_block*,int ) ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int cpu_to_le32 (scalar_t__) ;
 int mark_buffer_dirty_inode (TYPE_1__*,struct inode*) ;
 int udf_update_tag (scalar_t__,int) ;

__attribute__((used)) static void udf_update_alloc_ext_desc(struct inode *inode,
          struct extent_position *epos,
          u32 lenalloc)
{
 struct super_block *sb = inode->i_sb;
 struct udf_sb_info *sbi = UDF_SB(sb);

 struct allocExtDesc *aed = (struct allocExtDesc *) (epos->bh->b_data);
 int len = sizeof(struct allocExtDesc);

 aed->lengthAllocDescs = cpu_to_le32(lenalloc);
 if (!UDF_QUERY_FLAG(sb, UDF_FLAG_STRICT) || sbi->s_udfrev >= 0x0201)
  len += lenalloc;

 udf_update_tag(epos->bh->b_data, len);
 mark_buffer_dirty_inode(epos->bh, inode);
}
