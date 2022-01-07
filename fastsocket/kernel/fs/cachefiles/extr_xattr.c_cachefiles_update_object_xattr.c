
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cachefiles_xattr {int len; int type; } ;
struct cachefiles_object {struct dentry* dentry; } ;


 int ASSERT (struct dentry*) ;
 int ENOMEM ;
 int XATTR_REPLACE ;
 int _debug (char*,int ) ;
 int _enter (char*,struct cachefiles_object*,int ) ;
 int _leave (char*,int) ;
 int cachefiles_io_error_obj (struct cachefiles_object*,char*,int) ;
 int cachefiles_xattr_cache ;
 int vfs_setxattr (struct dentry*,int ,int *,int ,int ) ;

int cachefiles_update_object_xattr(struct cachefiles_object *object,
       struct cachefiles_xattr *auxdata)
{
 struct dentry *dentry = object->dentry;
 int ret;

 ASSERT(dentry);

 _enter("%p,#%d", object, auxdata->len);


 _debug("SET #%u", auxdata->len);

 ret = vfs_setxattr(dentry, cachefiles_xattr_cache,
      &auxdata->type, auxdata->len,
      XATTR_REPLACE);
 if (ret < 0 && ret != -ENOMEM)
  cachefiles_io_error_obj(
   object,
   "Failed to update xattr with error %d", ret);

 _leave(" = %d", ret);
 return ret;
}
