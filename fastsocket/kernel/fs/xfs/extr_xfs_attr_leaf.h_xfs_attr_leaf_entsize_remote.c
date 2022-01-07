
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_attr_leaf_name_remote_t ;
typedef scalar_t__ uint ;
typedef int nlen ;


 int XFS_ATTR_LEAF_NAME_ALIGN ;

__attribute__((used)) static inline int xfs_attr_leaf_entsize_remote(int nlen)
{
 return ((uint)sizeof(xfs_attr_leaf_name_remote_t) - 1 + (nlen) + XFS_ATTR_LEAF_NAME_ALIGN - 1) & ~(XFS_ATTR_LEAF_NAME_ALIGN - 1);

}
