
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_entry {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_size; int b_data; } ;
typedef int handle_t ;


 int __ocfs2_delete_entry (int *,struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,int ,int ) ;

__attribute__((used)) static inline int ocfs2_delete_entry_el(handle_t *handle,
     struct inode *dir,
     struct ocfs2_dir_entry *de_del,
     struct buffer_head *bh)
{
 return __ocfs2_delete_entry(handle, dir, de_del, bh, bh->b_data,
        bh->b_size);
}
