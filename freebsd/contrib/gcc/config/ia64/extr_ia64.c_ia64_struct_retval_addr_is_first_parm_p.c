
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BLKmode ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MODE (scalar_t__) ;
 scalar_t__ abi_version_at_least (int) ;
 TYPE_1__ lang_hooks ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool
ia64_struct_retval_addr_is_first_parm_p (tree fntype)
{
  tree ret_type = TREE_TYPE (fntype);







  return (abi_version_at_least (2)
   && ret_type
   && TYPE_MODE (ret_type) == BLKmode
   && TREE_ADDRESSABLE (ret_type)
   && strcmp (lang_hooks.name, "GNU C++") == 0);
}
