
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vm_fault {struct page* page; } ;
struct vm_area_struct {struct file* vm_file; } ;
struct page {struct address_space* mapping; } ;
struct TYPE_8__ {struct dentry* dentry; } ;
struct file {TYPE_6__* f_mapping; TYPE_1__ f_path; } ;
struct TYPE_11__ {int name; } ;
struct dentry {TYPE_7__* d_inode; TYPE_4__ d_name; TYPE_3__* d_parent; } ;
struct address_space {int dummy; } ;
struct TYPE_14__ {struct address_space* i_mapping; } ;
struct TYPE_13__ {TYPE_5__* host; } ;
struct TYPE_12__ {int i_ino; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_10__ {TYPE_2__ d_name; } ;


 int NFS_I (TYPE_7__*) ;
 int PAGECACHE ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int dfprintk (int ,char*,int ,int ,int ,long long) ;
 int lock_page (struct page*) ;
 scalar_t__ nfs_flush_incompatible (struct file*,struct page*) ;
 int nfs_fscache_wait_on_page_write (int ,struct page*) ;
 unsigned int nfs_page_length (struct page*) ;
 scalar_t__ nfs_updatepage (struct file*,struct page*,int ,unsigned int) ;
 scalar_t__ page_offset (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int nfs_vm_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct file *filp = vma->vm_file;
 struct dentry *dentry = filp->f_path.dentry;
 unsigned pagelen;
 int ret = VM_FAULT_NOPAGE;
 struct address_space *mapping;

 dfprintk(PAGECACHE, "NFS: vm_page_mkwrite(%s/%s(%ld), offset %lld)\n",
  dentry->d_parent->d_name.name, dentry->d_name.name,
  filp->f_mapping->host->i_ino,
  (long long)page_offset(page));


 nfs_fscache_wait_on_page_write(NFS_I(dentry->d_inode), page);

 lock_page(page);
 mapping = page->mapping;
 if (mapping != dentry->d_inode->i_mapping)
  goto out_unlock;

 pagelen = nfs_page_length(page);
 if (pagelen == 0)
  goto out_unlock;

 ret = VM_FAULT_LOCKED;
 if (nfs_flush_incompatible(filp, page) == 0 &&
     nfs_updatepage(filp, page, 0, pagelen) == 0)
  goto out;

 ret = VM_FAULT_SIGBUS;
out_unlock:
 unlock_page(page);
out:
 return ret;
}
