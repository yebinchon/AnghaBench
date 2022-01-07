
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_sb_private_info {scalar_t__ fs_magic; } ;
typedef scalar_t__ __fs64 ;
typedef scalar_t__ __fs32 ;


 scalar_t__ UFS2_MAGIC ;

__attribute__((used)) static inline void ufs_data_ptr_clear(struct ufs_sb_private_info *uspi,
          void *p)
{
 if (uspi->fs_magic == UFS2_MAGIC)
  *(__fs64 *)p = 0;
 else
  *(__fs32 *)p = 0;
}
