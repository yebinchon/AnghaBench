
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EINVAL ;
 int ocfs2_read_blocks (struct ocfs2_caching_info*,int ,int,struct buffer_head**,int ,int (*) (struct super_block*,struct buffer_head*)) ;
 int printk (char*) ;

__attribute__((used)) static inline int ocfs2_read_block(struct ocfs2_caching_info *ci, u64 off,
       struct buffer_head **bh,
       int (*validate)(struct super_block *sb,
         struct buffer_head *bh))
{
 int status = 0;

 if (bh == ((void*)0)) {
  printk("ocfs2: bh == NULL\n");
  status = -EINVAL;
  goto bail;
 }

 status = ocfs2_read_blocks(ci, off, 1, bh, 0, validate);

bail:
 return status;
}
