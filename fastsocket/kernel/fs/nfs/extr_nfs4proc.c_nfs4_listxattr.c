
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;
typedef size_t ssize_t ;


 size_t ERANGE ;
 int NFS_SERVER (int ) ;
 int XATTR_NAME_NFSV4_ACL ;
 int memcpy (char*,int ,size_t) ;
 int nfs4_server_supports_acls (int ) ;
 int strlen (int ) ;

ssize_t nfs4_listxattr(struct dentry *dentry, char *buf, size_t buflen)
{
 size_t len = strlen(XATTR_NAME_NFSV4_ACL) + 1;

 if (!nfs4_server_supports_acls(NFS_SERVER(dentry->d_inode)))
  return 0;
 if (buf && buflen < len)
  return -ERANGE;
 if (buf)
  memcpy(buf, XATTR_NAME_NFSV4_ACL, len);
 return len;
}
