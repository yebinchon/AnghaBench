
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_end; int vm_start; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;


 int DENTRY_PATH (struct dentry*) ;
 int PARANOIA (char*,int ,int) ;
 int VERBOSE (char*,int ,int ,int ) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int smb_revalidate_inode (struct dentry*) ;

__attribute__((used)) static int
smb_file_mmap(struct file * file, struct vm_area_struct * vma)
{
 struct dentry * dentry = file->f_path.dentry;
 int status;

 VERBOSE("file %s/%s, address %lu - %lu\n",
  DENTRY_PATH(dentry), vma->vm_start, vma->vm_end);

 status = smb_revalidate_inode(dentry);
 if (status) {
  PARANOIA("%s/%s validation failed, error=%d\n",
    DENTRY_PATH(dentry), status);
  goto out;
 }
 status = generic_file_mmap(file, vma);
out:
 return status;
}
