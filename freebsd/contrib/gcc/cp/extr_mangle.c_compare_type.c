
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_TYPE (scalar_t__) ;

__attribute__((used)) static int
compare_type (const void *val1, const void *val2)
{
  return TREE_TYPE ((tree) val1) == (tree) val2;
}
