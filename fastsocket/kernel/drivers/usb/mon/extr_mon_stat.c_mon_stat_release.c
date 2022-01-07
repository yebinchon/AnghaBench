
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snap {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct snap* private_data; } ;


 int kfree (struct snap*) ;

__attribute__((used)) static int mon_stat_release(struct inode *inode, struct file *file)
{
 struct snap *sp = file->private_data;
 file->private_data = ((void*)0);
 kfree(sp);
 return 0;
}
