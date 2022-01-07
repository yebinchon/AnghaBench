
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_fault {int dummy; } ;
struct vm_area_struct {TYPE_4__* vm_file; } ;
struct super_block {int dummy; } ;
typedef int get_block_t ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_8__ {TYPE_3__ f_path; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;


 int SB_FREEZE_WRITE ;
 int __block_page_mkwrite (struct vm_area_struct*,struct vm_fault*,int ) ;
 int block_page_mkwrite_return (int) ;
 int sb_end_pagefault (struct super_block*) ;
 int sb_has_new_freeze (struct super_block*) ;
 int sb_start_pagefault (struct super_block*) ;
 int vfs_check_frozen (struct super_block*,int ) ;

int block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
     get_block_t get_block)
{
 int ret;
 __attribute__ ((unused)) struct super_block *sb = vma->vm_file->f_path.dentry->d_inode->i_sb;






 if (!sb_has_new_freeze(sb))
  vfs_check_frozen(sb, SB_FREEZE_WRITE);

 sb_start_pagefault(sb);
 ret = __block_page_mkwrite(vma, vmf, get_block);
 sb_end_pagefault(sb);
 return block_page_mkwrite_return(ret);
}
