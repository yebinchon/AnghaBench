
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fiemap_extent_info {int fi_flags; } ;


 int EBADR ;
 int FIEMAP_FLAGS_COMPAT ;

int fiemap_check_flags(struct fiemap_extent_info *fieinfo, u32 fs_flags)
{
 u32 incompat_flags;

 incompat_flags = fieinfo->fi_flags & ~(FIEMAP_FLAGS_COMPAT & fs_flags);
 if (incompat_flags) {
  fieinfo->fi_flags = incompat_flags;
  return -EBADR;
 }
 return 0;
}
