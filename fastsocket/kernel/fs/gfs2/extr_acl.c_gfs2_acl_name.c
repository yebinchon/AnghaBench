
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* GFS2_POSIX_ACL_ACCESS ;
 char const* GFS2_POSIX_ACL_DEFAULT ;

__attribute__((used)) static const char *gfs2_acl_name(int type)
{
 switch (type) {
 case 129:
  return GFS2_POSIX_ACL_ACCESS;
 case 128:
  return GFS2_POSIX_ACL_DEFAULT;
 }
 return ((void*)0);
}
