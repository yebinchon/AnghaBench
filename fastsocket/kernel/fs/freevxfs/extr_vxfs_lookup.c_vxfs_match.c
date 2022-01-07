
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_direct {int d_namelen; int d_name; int d_ino; } ;


 int memcmp (char const* const,int ,int) ;

__attribute__((used)) static inline int
vxfs_match(int len, const char * const name, struct vxfs_direct *de)
{
 if (len != de->d_namelen)
  return 0;
 if (!de->d_ino)
  return 0;
 return !memcmp(name, de->d_name, len);
}
