
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_inofree_t ;


 int xfs_lowbit64 (int ) ;

__attribute__((used)) static inline int xfs_ialloc_find_free(xfs_inofree_t *fp)
{
 return xfs_lowbit64(*fp);
}
