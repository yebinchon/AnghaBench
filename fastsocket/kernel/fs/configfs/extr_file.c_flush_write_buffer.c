
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; } ;
struct configfs_item_operations {int (* store_attribute ) (struct config_item*,struct configfs_attribute*,int ,size_t) ;} ;
struct configfs_buffer {int page; struct configfs_item_operations* ops; } ;
struct configfs_attribute {int dummy; } ;
struct config_item {int dummy; } ;


 int stub1 (struct config_item*,struct configfs_attribute*,int ,size_t) ;
 struct configfs_attribute* to_attr (struct dentry*) ;
 struct config_item* to_item (int ) ;

__attribute__((used)) static int
flush_write_buffer(struct dentry * dentry, struct configfs_buffer * buffer, size_t count)
{
 struct configfs_attribute * attr = to_attr(dentry);
 struct config_item * item = to_item(dentry->d_parent);
 struct configfs_item_operations * ops = buffer->ops;

 return ops->store_attribute(item,attr,buffer->page,count);
}
