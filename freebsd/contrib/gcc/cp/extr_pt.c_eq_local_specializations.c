
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_VALUE (scalar_t__) ;

__attribute__((used)) static int
eq_local_specializations (const void *p1, const void *p2)
{
  return TREE_VALUE ((tree) p1) == (tree) p2;
}
