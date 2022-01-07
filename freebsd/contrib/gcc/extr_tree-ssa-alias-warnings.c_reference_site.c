
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int objs; int ptrs; } ;


 int match (int ,int ) ;
 TYPE_1__* reference_table (int) ;

__attribute__((used)) static tree
reference_site (tree object, bool is_ptr)
{
  if (is_ptr)
    return match (reference_table (1)->ptrs, object);
  else
    return match (reference_table (1)->objs, object);
}
