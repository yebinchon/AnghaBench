
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_recovery_info {int ri_used_segments; } ;


 int nilfs_dispose_segment_list (int *) ;

__attribute__((used)) static void nilfs_clear_recovery_info(struct nilfs_recovery_info *ri)
{
 nilfs_dispose_segment_list(&ri->ri_used_segments);
}
