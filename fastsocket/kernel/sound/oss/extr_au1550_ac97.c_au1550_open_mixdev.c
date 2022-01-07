
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int au1550_state ;

__attribute__((used)) static int
au1550_open_mixdev(struct inode *inode, struct file *file)
{
 file->private_data = &au1550_state;
 return 0;
}
