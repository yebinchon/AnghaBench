
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef size_t ssize_t ;


 size_t ERANGE ;
 int memcpy (void*,void*,size_t) ;
 size_t security_inode_getsecurity (struct inode*,char const*,void**,int) ;
 int security_release_secctx (void*,size_t) ;

ssize_t
xattr_getsecurity(struct inode *inode, const char *name, void *value,
   size_t size)
{
 void *buffer = ((void*)0);
 ssize_t len;

 if (!value || !size) {
  len = security_inode_getsecurity(inode, name, &buffer, 0);
  goto out_noalloc;
 }

 len = security_inode_getsecurity(inode, name, &buffer, 1);
 if (len < 0)
  return len;
 if (size < len) {
  len = -ERANGE;
  goto out;
 }
 memcpy(value, buffer, len);
out:
 security_release_secctx(buffer, len);
out_noalloc:
 return len;
}
