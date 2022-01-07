
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_recovery_info {int ri_used_segments; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct nilfs_recovery_info*,int ,int) ;

__attribute__((used)) static void nilfs_init_recovery_info(struct nilfs_recovery_info *ri)
{
 memset(ri, 0, sizeof(*ri));
 INIT_LIST_HEAD(&ri->ri_used_segments);
}
