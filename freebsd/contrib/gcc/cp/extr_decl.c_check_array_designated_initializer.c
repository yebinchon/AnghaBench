
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ index; } ;
typedef TYPE_1__ constructor_elt ;


 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int error (char*,scalar_t__) ;
 int gcc_assert (int) ;

__attribute__((used)) static bool
check_array_designated_initializer (const constructor_elt *ce)
{

  if (ce->index)
    {


      gcc_assert (TREE_CODE (ce->index) == IDENTIFIER_NODE);
      error ("name %qD used in a GNU-style designated "
      "initializer for an array", ce->index);
      return 0;
    }

  return 1;
}
