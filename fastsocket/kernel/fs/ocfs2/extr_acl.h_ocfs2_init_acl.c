
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;



__attribute__((used)) static inline int ocfs2_init_acl(handle_t *handle,
     struct inode *inode,
     struct inode *dir,
     struct buffer_head *di_bh,
     struct buffer_head *dir_bh,
     struct ocfs2_alloc_context *meta_ac,
     struct ocfs2_alloc_context *data_ac)
{
 return 0;
}
