
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;


 int EOPNOTSUPP ;
 int EXT4_XATTR_INDEX_SECURITY ;
 int ext4_xattr_set_handle (int *,struct inode*,int ,char*,void*,size_t,int ) ;
 int kfree (void*) ;
 int security_inode_init_security (struct inode*,struct inode*,char**,void**,size_t*) ;

int
ext4_init_security(handle_t *handle, struct inode *inode, struct inode *dir)
{
 int err;
 size_t len;
 void *value;
 char *name;

 err = security_inode_init_security(inode, dir, &name, &value, &len);
 if (err) {
  if (err == -EOPNOTSUPP)
   return 0;
  return err;
 }
 err = ext4_xattr_set_handle(handle, inode, EXT4_XATTR_INDEX_SECURITY,
        name, value, len, 0);
 kfree(name);
 kfree(value);
 return err;
}
