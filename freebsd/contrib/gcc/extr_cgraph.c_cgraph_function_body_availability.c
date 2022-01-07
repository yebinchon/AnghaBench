
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ externally_visible; scalar_t__ local; } ;
struct cgraph_node {int decl; TYPE_1__ local; int analyzed; } ;
typedef enum availability { ____Placeholder_availability } availability ;
struct TYPE_4__ {int (* binds_local_p ) (int ) ;} ;


 int AVAIL_AVAILABLE ;
 int AVAIL_LOCAL ;
 int AVAIL_NOT_AVAILABLE ;
 int AVAIL_OVERWRITABLE ;
 int DECL_COMDAT (int ) ;
 int DECL_EXTERNAL (int ) ;
 int cgraph_function_flags_ready ;
 int gcc_assert (int ) ;
 int stub1 (int ) ;
 TYPE_2__ targetm ;

enum availability
cgraph_function_body_availability (struct cgraph_node *node)
{
  enum availability avail;
  gcc_assert (cgraph_function_flags_ready);
  if (!node->analyzed)
    avail = AVAIL_NOT_AVAILABLE;
  else if (node->local.local)
    avail = AVAIL_LOCAL;
  else if (node->local.externally_visible)
    avail = AVAIL_AVAILABLE;
  else if (!(*targetm.binds_local_p) (node->decl)
    && !DECL_COMDAT (node->decl) && !DECL_EXTERNAL (node->decl))
    avail = AVAIL_OVERWRITABLE;
  else avail = AVAIL_AVAILABLE;

  return avail;
}
