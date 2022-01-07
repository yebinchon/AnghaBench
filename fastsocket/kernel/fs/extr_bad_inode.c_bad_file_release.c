
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_file_release(struct inode *inode, struct file *filp)
{
 return -EIO;
}
