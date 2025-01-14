
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hfsplus_readdir_data {int list; } ;
struct file {struct hfsplus_readdir_data* private_data; } ;


 int kfree (struct hfsplus_readdir_data*) ;
 int list_del (int *) ;

__attribute__((used)) static int hfsplus_dir_release(struct inode *inode, struct file *file)
{
 struct hfsplus_readdir_data *rd = file->private_data;
 if (rd) {
  list_del(&rd->list);
  kfree(rd);
 }
 return 0;
}
