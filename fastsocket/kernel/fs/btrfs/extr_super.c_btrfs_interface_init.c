
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btrfs_misc ;
 int misc_register (int *) ;

__attribute__((used)) static int btrfs_interface_init(void)
{
 return misc_register(&btrfs_misc);
}
