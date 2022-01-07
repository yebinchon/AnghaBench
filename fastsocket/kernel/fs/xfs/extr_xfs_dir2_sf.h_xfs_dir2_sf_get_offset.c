
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
struct TYPE_5__ {TYPE_1__ offset; } ;
typedef TYPE_2__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_data_aoff_t ;


 int INT_GET_UNALIGNED_16_BE (int *) ;

__attribute__((used)) static inline xfs_dir2_data_aoff_t
xfs_dir2_sf_get_offset(xfs_dir2_sf_entry_t *sfep)
{
 return INT_GET_UNALIGNED_16_BE(&(sfep)->offset.i);
}
