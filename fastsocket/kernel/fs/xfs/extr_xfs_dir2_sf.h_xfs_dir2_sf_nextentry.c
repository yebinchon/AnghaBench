
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_sf_t ;
typedef int xfs_dir2_sf_entry_t ;
typedef scalar_t__ sfep ;


 scalar_t__ xfs_dir2_sf_entsize_byentry (int *,int *) ;

__attribute__((used)) static inline xfs_dir2_sf_entry_t *
xfs_dir2_sf_nextentry(xfs_dir2_sf_t *sfp, xfs_dir2_sf_entry_t *sfep)
{
 return ((xfs_dir2_sf_entry_t *) ((char *)(sfep) + xfs_dir2_sf_entsize_byentry(sfp,sfep)));

}
