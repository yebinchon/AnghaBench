
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,void*,struct file_operations const*) ;
 int pr_warning (char*,char const*) ;

struct dentry *trace_create_file(const char *name,
     mode_t mode,
     struct dentry *parent,
     void *data,
     const struct file_operations *fops)
{
 struct dentry *ret;

 ret = debugfs_create_file(name, mode, parent, data, fops);
 if (!ret)
  pr_warning("Could not create debugfs '%s' entry\n", name);

 return ret;
}
