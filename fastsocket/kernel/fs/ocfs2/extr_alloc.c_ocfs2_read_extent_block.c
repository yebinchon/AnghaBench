
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ocfs2_read_block (struct ocfs2_caching_info*,int ,struct buffer_head**,int ) ;
 int ocfs2_validate_extent_block ;

int ocfs2_read_extent_block(struct ocfs2_caching_info *ci, u64 eb_blkno,
       struct buffer_head **bh)
{
 int rc;
 struct buffer_head *tmp = *bh;

 rc = ocfs2_read_block(ci, eb_blkno, &tmp,
         ocfs2_validate_extent_block);


 if (!rc && !*bh)
  *bh = tmp;

 return rc;
}
