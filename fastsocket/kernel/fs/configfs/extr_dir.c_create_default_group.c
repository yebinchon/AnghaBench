
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int len; scalar_t__ name; int hash; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_type; } ;
struct TYPE_3__ {scalar_t__ ci_name; scalar_t__ ci_namebuf; struct dentry* ci_dentry; } ;
struct config_group {TYPE_1__ cg_item; } ;


 int CONFIGFS_USET_DEFAULT ;
 int ENOMEM ;
 int configfs_attach_group (TYPE_1__*,TYPE_1__*,struct dentry*) ;
 int d_add (struct dentry*,int *) ;
 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 int d_delete (struct dentry*) ;
 int dput (struct dentry*) ;
 int full_name_hash (scalar_t__,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int create_default_group(struct config_group *parent_group,
    struct config_group *group)
{
 int ret;
 struct qstr name;
 struct configfs_dirent *sd;

 struct dentry *child, *parent = parent_group->cg_item.ci_dentry;

 if (!group->cg_item.ci_name)
  group->cg_item.ci_name = group->cg_item.ci_namebuf;
 name.name = group->cg_item.ci_name;
 name.len = strlen(name.name);
 name.hash = full_name_hash(name.name, name.len);

 ret = -ENOMEM;
 child = d_alloc(parent, &name);
 if (child) {
  d_add(child, ((void*)0));

  ret = configfs_attach_group(&parent_group->cg_item,
         &group->cg_item, child);
  if (!ret) {
   sd = child->d_fsdata;
   sd->s_type |= CONFIGFS_USET_DEFAULT;
  } else {
   d_delete(child);
   dput(child);
  }
 }

 return ret;
}
