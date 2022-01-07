
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; struct dentry* d_parent; } ;
struct autofs_sb_info {TYPE_1__* sb; } ;
struct TYPE_3__ {struct dentry* s_root; } ;


 int NAME_MAX ;
 int dcache_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int autofs4_getpath(struct autofs_sb_info *sbi,
      struct dentry *dentry, char **name)
{
 struct dentry *root = sbi->sb->s_root;
 struct dentry *tmp;
 char *buf = *name;
 char *p;
 int len = 0;

 spin_lock(&dcache_lock);
 for (tmp = dentry ; tmp != root ; tmp = tmp->d_parent)
  len += tmp->d_name.len + 1;

 if (!len || --len > NAME_MAX) {
  spin_unlock(&dcache_lock);
  return 0;
 }

 *(buf + len) = '\0';
 p = buf + len - dentry->d_name.len;
 strncpy(p, dentry->d_name.name, dentry->d_name.len);

 for (tmp = dentry->d_parent; tmp != root ; tmp = tmp->d_parent) {
  *(--p) = '/';
  p -= tmp->d_name.len;
  strncpy(p, tmp->d_name.name, tmp->d_name.len);
 }
 spin_unlock(&dcache_lock);

 return len;
}
