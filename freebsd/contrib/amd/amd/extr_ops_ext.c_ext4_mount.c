
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntfs ;
typedef int am_node ;


 int MNTTAB_TYPE_EXT4 ;
 int MOUNT_TYPE_EXT4 ;
 int ext_mount (int *,int *,int ,int ) ;

__attribute__((used)) static int
ext4_mount(am_node *am, mntfs *mf)
{
  return ext_mount(am, mf, MOUNT_TYPE_EXT4, MNTTAB_TYPE_EXT4);
}
