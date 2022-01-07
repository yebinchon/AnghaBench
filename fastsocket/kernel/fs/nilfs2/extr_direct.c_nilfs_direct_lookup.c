
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int ENOENT ;
 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_DIRECT_KEY_MAX ;
 int nilfs_direct_get_ptr (struct nilfs_direct*,int ) ;

__attribute__((used)) static int nilfs_direct_lookup(const struct nilfs_bmap *bmap,
          __u64 key, int level, __u64 *ptrp)
{
 struct nilfs_direct *direct;
 __u64 ptr;

 direct = (struct nilfs_direct *)bmap;
 if ((key > NILFS_DIRECT_KEY_MAX) ||
     (level != 1) ||
     ((ptr = nilfs_direct_get_ptr(direct, key)) ==
      NILFS_BMAP_INVALID_PTR))
  return -ENOENT;

 if (ptrp != ((void*)0))
  *ptrp = ptr;
 return 0;
}
