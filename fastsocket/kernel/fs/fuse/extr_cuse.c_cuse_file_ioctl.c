
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file {int fc; } ;
struct file {struct fuse_file* private_data; } ;
struct cuse_conn {scalar_t__ unrestricted_ioctl; } ;


 unsigned int FUSE_IOCTL_UNRESTRICTED ;
 struct cuse_conn* fc_to_cc (int ) ;
 long fuse_do_ioctl (struct file*,unsigned int,unsigned long,unsigned int) ;

__attribute__((used)) static long cuse_file_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 struct fuse_file *ff = file->private_data;
 struct cuse_conn *cc = fc_to_cc(ff->fc);
 unsigned int flags = 0;

 if (cc->unrestricted_ioctl)
  flags |= FUSE_IOCTL_UNRESTRICTED;

 return fuse_do_ioctl(file, cmd, arg, flags);
}
