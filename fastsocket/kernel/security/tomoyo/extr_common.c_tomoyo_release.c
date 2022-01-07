
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int tomoyo_close_control (struct file*) ;

__attribute__((used)) static int tomoyo_release(struct inode *inode, struct file *file)
{
 return tomoyo_close_control(file);
}
