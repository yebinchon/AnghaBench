
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_data_off_t ;
typedef scalar_t__ uint ;
typedef scalar_t__ n ;


 int XFS_DIR2_DATA_ALIGN ;
 int * name ;
 scalar_t__ offsetof (int ,int ) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int xfs_dir2_data_entry_t ;

__attribute__((used)) static inline int xfs_dir2_data_entsize(int n)
{
 return (int)roundup(offsetof(xfs_dir2_data_entry_t, name[0]) + (n) + (uint)sizeof(xfs_dir2_data_off_t), XFS_DIR2_DATA_ALIGN);

}
