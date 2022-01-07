
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {struct configfs_buffer* private_data; TYPE_1__ f_path; } ;
struct configfs_buffer {int mutex; scalar_t__ page; } ;
struct configfs_attribute {struct module* ca_owner; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int d_parent; } ;


 int config_item_put (struct config_item*) ;
 int free_page (unsigned long) ;
 int kfree (struct configfs_buffer*) ;
 int module_put (struct module*) ;
 int mutex_destroy (int *) ;
 struct configfs_attribute* to_attr (TYPE_2__*) ;
 struct config_item* to_item (int ) ;

__attribute__((used)) static int configfs_release(struct inode * inode, struct file * filp)
{
 struct config_item * item = to_item(filp->f_path.dentry->d_parent);
 struct configfs_attribute * attr = to_attr(filp->f_path.dentry);
 struct module * owner = attr->ca_owner;
 struct configfs_buffer * buffer = filp->private_data;

 if (item)
  config_item_put(item);

 module_put(owner);

 if (buffer) {
  if (buffer->page)
   free_page((unsigned long)buffer->page);
  mutex_destroy(&buffer->mutex);
  kfree(buffer);
 }
 return 0;
}
