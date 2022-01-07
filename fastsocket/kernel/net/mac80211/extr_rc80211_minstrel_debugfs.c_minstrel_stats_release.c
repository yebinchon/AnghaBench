
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int kfree (int ) ;

int
minstrel_stats_release(struct inode *inode, struct file *file)
{
 kfree(file->private_data);
 return 0;
}
