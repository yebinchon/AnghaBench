
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char* name; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; } ;


 int GFP_KERNEL ;
 scalar_t__ is_pid (struct dentry*) ;
 char* kmalloc (int,int ) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static char *dentry_name(struct dentry *dentry, int extra)
{
 struct dentry *parent;
 char *root, *name;
 const char *seg_name;
 int len, seg_len;

 len = 0;
 parent = dentry;
 while (parent->d_parent != parent) {
  if (is_pid(parent))
   len += strlen("pid") + 1;
  else len += parent->d_name.len + 1;
  parent = parent->d_parent;
 }

 root = "proc";
 len += strlen(root);
 name = kmalloc(len + extra + 1, GFP_KERNEL);
 if (name == ((void*)0))
  return ((void*)0);

 name[len] = '\0';
 parent = dentry;
 while (parent->d_parent != parent) {
  if (is_pid(parent)) {
   seg_name = "pid";
   seg_len = strlen("pid");
  }
  else {
   seg_name = parent->d_name.name;
   seg_len = parent->d_name.len;
  }

  len -= seg_len + 1;
  name[len] = '/';
  strncpy(&name[len + 1], seg_name, seg_len);
  parent = parent->d_parent;
 }
 strncpy(name, root, strlen(root));
 return name;
}
