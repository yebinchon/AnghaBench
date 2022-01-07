
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int EINVAL ;
 int GFS2_POSIX_ACL_ACCESS ;
 int GFS2_POSIX_ACL_DEFAULT ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int gfs2_acl_type(const char *name)
{
 if (strcmp(name, GFS2_POSIX_ACL_ACCESS) == 0)
  return ACL_TYPE_ACCESS;
 if (strcmp(name, GFS2_POSIX_ACL_DEFAULT) == 0)
  return ACL_TYPE_DEFAULT;
 return -EINVAL;
}
