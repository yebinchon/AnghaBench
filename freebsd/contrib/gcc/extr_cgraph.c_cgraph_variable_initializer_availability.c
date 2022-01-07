
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_varpool_node {int decl; int finalized; } ;
typedef enum availability { ____Placeholder_availability } availability ;
struct TYPE_2__ {int (* binds_local_p ) (int ) ;} ;


 int AVAIL_AVAILABLE ;
 int AVAIL_NOT_AVAILABLE ;
 int AVAIL_OVERWRITABLE ;
 int DECL_COMDAT (int ) ;
 int TREE_PUBLIC (int ) ;
 int cgraph_function_flags_ready ;
 int gcc_assert (int ) ;
 int stub1 (int ) ;
 TYPE_1__ targetm ;

enum availability
cgraph_variable_initializer_availability (struct cgraph_varpool_node *node)
{
  gcc_assert (cgraph_function_flags_ready);
  if (!node->finalized)
    return AVAIL_NOT_AVAILABLE;
  if (!TREE_PUBLIC (node->decl))
    return AVAIL_AVAILABLE;



  if (!(*targetm.binds_local_p) (node->decl) && !DECL_COMDAT (node->decl))
    return AVAIL_OVERWRITABLE;
  return AVAIL_AVAILABLE;
}
