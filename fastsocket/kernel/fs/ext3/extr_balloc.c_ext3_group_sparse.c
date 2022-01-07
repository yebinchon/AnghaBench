
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_root (int,int) ;

__attribute__((used)) static int ext3_group_sparse(int group)
{
 if (group <= 1)
  return 1;
 if (!(group & 1))
  return 0;
 return (test_root(group, 7) || test_root(group, 5) ||
  test_root(group, 3));
}
