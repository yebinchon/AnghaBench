
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {TYPE_2__* f_dentry; } ;
typedef scalar_t__ ssize_t ;
typedef size_t loff_t ;
struct TYPE_6__ {int sem; int resource; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_rdev; } ;


 scalar_t__ EINVAL ;

 unsigned int MINOR (int ) ;

 scalar_t__ buffer_to_user (unsigned int,char*,size_t,size_t*) ;
 int down (int *) ;
 TYPE_3__* image ;
 scalar_t__ resource_to_user (unsigned int,char*,size_t,size_t*) ;
 int* type ;
 int up (int *) ;
 size_t vme_get_size (int ) ;

__attribute__((used)) static ssize_t vme_user_read(struct file *file, char *buf, size_t count,
   loff_t * ppos)
{
 unsigned int minor = MINOR(file->f_dentry->d_inode->i_rdev);
 ssize_t retval;
 size_t image_size;
 size_t okcount;

 down(&image[minor].sem);


 image_size = vme_get_size(image[minor].resource);


 if ((*ppos < 0) || (*ppos > (image_size - 1))) {
  up(&image[minor].sem);
  return 0;
 }


 if (*ppos + count > image_size)
  okcount = image_size - *ppos;
 else
  okcount = count;

 switch (type[minor]){
 case 129:
  retval = resource_to_user(minor, buf, okcount, ppos);
  break;
 case 128:
  retval = buffer_to_user(minor, buf, okcount, ppos);
  break;
 default:
  retval = -EINVAL;
 }

 up(&image[minor].sem);

 if (retval > 0)
  *ppos += retval;

 return retval;
}
