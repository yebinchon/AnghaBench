
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct property {char* name; unsigned int unique_id; struct property* next; } ;
struct TYPE_7__ {struct device_node* node; } ;
struct op_inode_info {TYPE_3__ u; } ;
struct inode {unsigned int i_ino; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
struct device_node {char* path_component_name; unsigned int unique_id; struct property* properties; struct device_node* sibling; struct device_node* child; TYPE_4__* parent; } ;
typedef int (* filldir_t ) (void*,char*,int,int,unsigned int,int ) ;
struct TYPE_8__ {unsigned int unique_id; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int DT_DIR ;
 int DT_REG ;
 unsigned int OPENPROM_ROOT_INO ;
 struct op_inode_info* OP_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int op_mutex ;
 int strlen (char*) ;

__attribute__((used)) static int openpromfs_readdir(struct file * filp, void * dirent, filldir_t filldir)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct op_inode_info *oi = OP_I(inode);
 struct device_node *dp = oi->u.node;
 struct device_node *child;
 struct property *prop;
 unsigned int ino;
 int i;

 mutex_lock(&op_mutex);

 ino = inode->i_ino;
 i = filp->f_pos;
 switch (i) {
 case 0:
  if (filldir(dirent, ".", 1, i, ino, DT_DIR) < 0)
   goto out;
  i++;
  filp->f_pos++;

 case 1:
  if (filldir(dirent, "..", 2, i,
       (dp->parent == ((void*)0) ?
        OPENPROM_ROOT_INO :
        dp->parent->unique_id), DT_DIR) < 0)
   goto out;
  i++;
  filp->f_pos++;

 default:
  i -= 2;


  child = dp->child;
  while (i && child) {
   child = child->sibling;
   i--;
  }
  while (child) {
   if (filldir(dirent,
        child->path_component_name,
        strlen(child->path_component_name),
        filp->f_pos, child->unique_id, DT_DIR) < 0)
    goto out;

   filp->f_pos++;
   child = child->sibling;
  }


  prop = dp->properties;
  while (i && prop) {
   prop = prop->next;
   i--;
  }
  while (prop) {
   if (filldir(dirent, prop->name, strlen(prop->name),
        filp->f_pos, prop->unique_id, DT_REG) < 0)
    goto out;

   filp->f_pos++;
   prop = prop->next;
  }
 }
out:
 mutex_unlock(&op_mutex);
 return 0;
}
