
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_node ;


 int ESTALE ;

am_node *
amfs_error_mount_child(am_node *ap, int *error_return)
{
  *error_return = ESTALE;
  return 0;
}
