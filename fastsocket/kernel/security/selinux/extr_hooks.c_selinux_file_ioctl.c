
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;


 int FILE__IOCTL ;
 int FILE__READ ;
 int FILE__WRITE ;
 int _IOC_DIR (unsigned int) ;
 int _IOC_READ ;
 int _IOC_WRITE ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;

__attribute__((used)) static int selinux_file_ioctl(struct file *file, unsigned int cmd,
         unsigned long arg)
{
 const struct cred *cred = current_cred();
 u32 av = 0;

 if (_IOC_DIR(cmd) & _IOC_WRITE)
  av |= FILE__WRITE;
 if (_IOC_DIR(cmd) & _IOC_READ)
  av |= FILE__READ;
 if (!av)
  av = FILE__IOCTL;

 return file_has_perm(cred, file, av);
}
