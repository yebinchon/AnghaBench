
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_dx_root_block {int dr_entries; } ;
struct ocfs2_dx_hinfo {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;


 int ocfs2_dx_entry_list_insert (int *,struct ocfs2_dx_hinfo*,int ) ;

__attribute__((used)) static void ocfs2_dx_inline_root_insert(struct inode *dir, handle_t *handle,
     struct ocfs2_dx_hinfo *hinfo,
     u64 dirent_blk,
     struct ocfs2_dx_root_block *dx_root)
{
 ocfs2_dx_entry_list_insert(&dx_root->dr_entries, hinfo, dirent_blk);
}
