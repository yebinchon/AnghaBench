
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int namelen; } ;
typedef TYPE_1__ xfs_dir2_data_entry_t ;
typedef int __be16 ;


 int xfs_dir2_data_entsize (int ) ;

__attribute__((used)) static inline __be16 *
xfs_dir2_data_entry_tag_p(xfs_dir2_data_entry_t *dep)
{
 return (__be16 *)((char *)dep +
  xfs_dir2_data_entsize(dep->namelen) - sizeof(__be16));
}
