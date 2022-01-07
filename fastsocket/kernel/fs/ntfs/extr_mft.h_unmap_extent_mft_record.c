
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntfs_inode ;


 int unmap_mft_record (int *) ;

__attribute__((used)) static inline void unmap_extent_mft_record(ntfs_inode *ni)
{
 unmap_mft_record(ni);
 return;
}
