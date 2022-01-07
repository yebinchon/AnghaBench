
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_4__ {TYPE_3__* dentry; } ;
struct file {int f_mode; struct configfs_buffer* private_data; TYPE_1__ f_path; } ;
struct configfs_item_operations {int show_attribute; int store_attribute; } ;
struct configfs_buffer {int needs_read_fill; struct configfs_item_operations* ops; int mutex; } ;
struct configfs_attribute {int ca_owner; } ;
struct config_item {TYPE_2__* ci_type; } ;
struct TYPE_6__ {int d_parent; } ;
struct TYPE_5__ {struct configfs_item_operations* ct_item_ops; } ;


 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUGO ;
 int config_item_put (struct config_item*) ;
 struct config_item* configfs_get_config_item (int ) ;
 struct configfs_buffer* kzalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 struct configfs_attribute* to_attr (TYPE_3__*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int check_perm(struct inode * inode, struct file * file)
{
 struct config_item *item = configfs_get_config_item(file->f_path.dentry->d_parent);
 struct configfs_attribute * attr = to_attr(file->f_path.dentry);
 struct configfs_buffer * buffer;
 struct configfs_item_operations * ops = ((void*)0);
 int error = 0;

 if (!item || !attr)
  goto Einval;


 if (!try_module_get(attr->ca_owner)) {
  error = -ENODEV;
  goto Done;
 }

 if (item->ci_type)
  ops = item->ci_type->ct_item_ops;
 else
  goto Eaccess;





 if (file->f_mode & FMODE_WRITE) {

  if (!(inode->i_mode & S_IWUGO) || !ops->store_attribute)
   goto Eaccess;

 }





 if (file->f_mode & FMODE_READ) {
  if (!(inode->i_mode & S_IRUGO) || !ops->show_attribute)
   goto Eaccess;
 }




 buffer = kzalloc(sizeof(struct configfs_buffer),GFP_KERNEL);
 if (!buffer) {
  error = -ENOMEM;
  goto Enomem;
 }
 mutex_init(&buffer->mutex);
 buffer->needs_read_fill = 1;
 buffer->ops = ops;
 file->private_data = buffer;
 goto Done;

 Einval:
 error = -EINVAL;
 goto Done;
 Eaccess:
 error = -EACCES;
 Enomem:
 module_put(attr->ca_owner);
 Done:
 if (error && item)
  config_item_put(item);
 return error;
}
