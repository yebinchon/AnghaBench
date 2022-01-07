
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_rdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int sem; int users; } ;


 unsigned int MINOR (int ) ;
 int down (int *) ;
 TYPE_1__* image ;
 int up (int *) ;

__attribute__((used)) static int vme_user_release(struct inode *inode, struct file *file)
{
 unsigned int minor = MINOR(inode->i_rdev);

 down(&image[minor].sem);


 image[minor].users--;

 up(&image[minor].sem);

 return 0;
}
