
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ value; } ;


 int LIMIT ;
 scalar_t__ NULL_TREE ;
 size_t SSA_NAME_VERSION (scalar_t__) ;
 TYPE_1__* copy_of ;

__attribute__((used)) static tree
get_last_copy_of (tree var)
{
  tree last;
  int i;
  last = var;
  for (i = 0; i < 5; i++)
    {
      tree copy = copy_of[SSA_NAME_VERSION (last)].value;
      if (copy == NULL_TREE || copy == last)
 break;
      last = copy;
    }




  return (i < 5 ? last : var);
}
