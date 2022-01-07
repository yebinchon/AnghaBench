
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_file; } ;
struct page {int index; } ;
struct TYPE_6__ {int vnode; int vid; } ;
struct afs_vnode {int cache; TYPE_3__ fid; } ;
struct TYPE_5__ {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int host; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;

int afs_page_mkwrite(struct vm_area_struct *vma, struct page *page)
{
 struct afs_vnode *vnode = AFS_FS_I(vma->vm_file->f_mapping->host);

 _enter("{{%x:%u}},{%lx}",
        vnode->fid.vid, vnode->fid.vnode, page->index);







 _leave(" = 0");
 return 0;
}
