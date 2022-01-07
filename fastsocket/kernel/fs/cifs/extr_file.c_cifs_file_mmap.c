
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct file {int dummy; } ;


 int FreeXid (int) ;
 int GetXid () ;
 int cFYI (int,char*,int) ;
 int cifs_file_vm_ops ;
 int cifs_revalidate_file (struct file*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;

int cifs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 int rc, xid;

 xid = GetXid();
 rc = cifs_revalidate_file(file);
 if (rc) {
  cFYI(1, "Validation prior to mmap failed, error=%d", rc);
  FreeXid(xid);
  return rc;
 }
 rc = generic_file_mmap(file, vma);
 if (rc == 0)
  vma->vm_ops = &cifs_file_vm_ops;
 FreeXid(xid);
 return rc;
}
