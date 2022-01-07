
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct gfs2_inode {int i_gl; int i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct file {int f_flags; TYPE_1__* f_mapping; } ;
struct TYPE_2__ {int host; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int IS_NOATIME (int *) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int O_NOATIME ;
 int VM_CAN_NONLINEAR ;
 int file_accessed (struct file*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_vm_ops ;

__attribute__((used)) static int gfs2_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct gfs2_inode *ip = GFS2_I(file->f_mapping->host);

 if (!(file->f_flags & O_NOATIME) &&
     !IS_NOATIME(&ip->i_inode)) {
  struct gfs2_holder i_gh;
  int error;

  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
        &i_gh);
  if (error)
   return error;

  gfs2_glock_dq_uninit(&i_gh);
  file_accessed(file);
 }
 vma->vm_ops = &gfs2_vm_ops;
 vma->vm_flags |= VM_CAN_NONLINEAR;

 return 0;
}
