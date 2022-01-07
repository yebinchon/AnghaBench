
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_6__ {int dentry; } ;
struct file {int f_mode; TYPE_2__ f_path; } ;
struct TYPE_5__ {int owner; int default_hard; } ;
struct TYPE_8__ {TYPE_1__ mach; int hard; } ;
struct TYPE_7__ {scalar_t__ busy; } ;


 int FMODE_WRITE ;
 TYPE_4__ dmasound ;
 int lock_kernel () ;
 int module_put (int ) ;
 int read_sq_wake_up (struct file*) ;
 int shared_resource_owner ;
 scalar_t__ shared_resources_initialised ;
 int sq_fsync (struct file*,int ) ;
 int sq_reset_output () ;
 int unlock_kernel () ;
 TYPE_3__ write_sq ;
 int write_sq_release_buffers () ;
 int write_sq_wake_up (struct file*) ;

__attribute__((used)) static int sq_release(struct inode *inode, struct file *file)
{
 int rc = 0;

 lock_kernel();

 if (file->f_mode & FMODE_WRITE) {
  if (write_sq.busy)
   rc = sq_fsync(file, file->f_path.dentry);

  sq_reset_output() ;
  write_sq_release_buffers();
  write_sq.busy = 0;
 }

 if (file->f_mode & shared_resource_owner) {
  shared_resource_owner = 0 ;
  shared_resources_initialised = 0 ;
  dmasound.hard = dmasound.mach.default_hard ;
 }

 module_put(dmasound.mach.owner);
 unlock_kernel();

 return rc;
}
