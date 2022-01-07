
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_op; int d_fsdata; } ;
struct configfs_dirent {struct dentry* s_dentry; struct configfs_attribute* s_element; } ;
struct configfs_attribute {int ca_mode; } ;


 int S_IALLUGO ;
 int S_IFREG ;
 int configfs_create (struct dentry*,int,int ) ;
 int configfs_dentry_ops ;
 int configfs_get (struct configfs_dirent*) ;
 int configfs_init_file ;
 int configfs_put (struct configfs_dirent*) ;
 int d_rehash (struct dentry*) ;

__attribute__((used)) static int configfs_attach_attr(struct configfs_dirent * sd, struct dentry * dentry)
{
 struct configfs_attribute * attr = sd->s_element;
 int error;

 dentry->d_fsdata = configfs_get(sd);
 sd->s_dentry = dentry;
 error = configfs_create(dentry, (attr->ca_mode & S_IALLUGO) | S_IFREG,
    configfs_init_file);
 if (error) {
  configfs_put(sd);
  return error;
 }

 dentry->d_op = &configfs_dentry_ops;
 d_rehash(dentry);

 return 0;
}
