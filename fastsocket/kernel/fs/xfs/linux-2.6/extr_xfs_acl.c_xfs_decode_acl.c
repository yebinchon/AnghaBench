
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
xfs_decode_acl(const char *name)
{
 if (strcmp(name, "posix_acl_access") == 0)
  return ACL_TYPE_ACCESS;
 else if (strcmp(name, "posix_acl_default") == 0)
  return ACL_TYPE_DEFAULT;
 return -EOPNOTSUPP;
}
