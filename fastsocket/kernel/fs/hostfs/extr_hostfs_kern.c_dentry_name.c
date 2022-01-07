
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; scalar_t__ len; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; int d_inode; } ;
struct TYPE_4__ {char* host_filename; } ;


 int GFP_KERNEL ;
 TYPE_2__* HOSTFS_I (int ) ;
 char* kmalloc (int,int ) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,scalar_t__) ;

__attribute__((used)) static char *dentry_name(struct dentry *dentry, int extra)
{
 struct dentry *parent;
 char *root, *name;
 int len;

 len = 0;
 parent = dentry;
 while (parent->d_parent != parent) {
  len += parent->d_name.len + 1;
  parent = parent->d_parent;
 }

 root = HOSTFS_I(parent->d_inode)->host_filename;
 len += strlen(root);
 name = kmalloc(len + extra + 1, GFP_KERNEL);
 if (name == ((void*)0))
  return ((void*)0);

 name[len] = '\0';
 parent = dentry;
 while (parent->d_parent != parent) {
  len -= parent->d_name.len + 1;
  name[len] = '/';
  strncpy(&name[len + 1], parent->d_name.name,
   parent->d_name.len);
  parent = parent->d_parent;
 }
 strncpy(name, root, strlen(root));
 return name;
}
