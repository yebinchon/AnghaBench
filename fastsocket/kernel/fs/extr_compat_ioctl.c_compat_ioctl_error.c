
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_path; } ;
struct TYPE_2__ {int pid; int comm; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PAGE_SIZE ;
 unsigned int _IOC_SIZEMASK ;
 unsigned int _IOC_SIZESHIFT ;
 unsigned int _IOC_TYPEMASK ;
 unsigned int _IOC_TYPESHIFT ;
 scalar_t__ __get_free_page (int ) ;
 int compat_printk (char*,int ,int ,int,unsigned int,char*,unsigned int,unsigned int,char*) ;
 TYPE_1__* current ;
 char* d_path (int *,char*,int ) ;
 int free_page (unsigned long) ;
 int isprint (char) ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static void compat_ioctl_error(struct file *filp, unsigned int fd,
  unsigned int cmd, unsigned long arg)
{
 char buf[10];
 char *fn = "?";
 char *path;


 path = (char *)__get_free_page(GFP_KERNEL);
 if (path) {
  fn = d_path(&filp->f_path, path, PAGE_SIZE);
  if (IS_ERR(fn))
   fn = "?";
 }

  sprintf(buf,"'%c'", (cmd>>_IOC_TYPESHIFT) & _IOC_TYPEMASK);
 if (!isprint(buf[1]))
  sprintf(buf, "%02x", buf[1]);
 compat_printk("ioctl32(%s:%d): Unknown cmd fd(%d) "
   "cmd(%08x){t:%s;sz:%u} arg(%08x) on %s\n",
   current->comm, current->pid,
   (int)fd, (unsigned int)cmd, buf,
   (cmd >> _IOC_SIZESHIFT) & _IOC_SIZEMASK,
   (unsigned int)arg, fn);

 if (path)
  free_page((unsigned long)path);
}
