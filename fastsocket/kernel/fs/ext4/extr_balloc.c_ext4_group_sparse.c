
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext4_group_t ;


 scalar_t__ test_root (int,int) ;

__attribute__((used)) static int ext4_group_sparse(ext4_group_t group)
{
 if (group <= 1)
  return 1;
 if (!(group & 1))
  return 0;
 return (test_root(group, 7) || test_root(group, 5) ||
  test_root(group, 3));
}
