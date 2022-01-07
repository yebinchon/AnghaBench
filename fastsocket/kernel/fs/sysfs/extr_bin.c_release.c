
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bin_buffer* private_data; } ;
struct bin_buffer {struct bin_buffer* buffer; int list; } ;


 int hlist_del (int *) ;
 int kfree (struct bin_buffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_bin_lock ;

__attribute__((used)) static int release(struct inode * inode, struct file * file)
{
 struct bin_buffer *bb = file->private_data;

 mutex_lock(&sysfs_bin_lock);
 hlist_del(&bb->list);
 mutex_unlock(&sysfs_bin_lock);

 kfree(bb->buffer);
 kfree(bb);
 return 0;
}
