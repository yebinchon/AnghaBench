
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct fscache_objlist_data* private; } ;
struct inode {int dummy; } ;
struct fscache_objlist_data {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int fscache_objlist_config (struct fscache_objlist_data*) ;
 int fscache_objlist_ops ;
 struct fscache_objlist_data* kmalloc (int,int ) ;
 int seq_open (struct file*,int *) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int fscache_objlist_open(struct inode *inode, struct file *file)
{
 struct fscache_objlist_data *data;
 struct seq_file *m;
 int ret;

 ret = seq_open(file, &fscache_objlist_ops);
 if (ret < 0)
  return ret;

 m = file->private_data;


 data = kmalloc(sizeof(struct fscache_objlist_data), GFP_KERNEL);
 if (!data) {
  seq_release(inode, file);
  return -ENOMEM;
 }


 fscache_objlist_config(data);

 m->private = data;
 return 0;
}
