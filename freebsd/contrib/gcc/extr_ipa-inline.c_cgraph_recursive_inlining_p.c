
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ disregard_inline_limits; } ;
struct TYPE_6__ {TYPE_2__* inlined_to; } ;
struct cgraph_node {scalar_t__ decl; TYPE_1__ local; TYPE_3__ global; } ;
struct TYPE_5__ {scalar_t__ decl; } ;


 char* N_ (char*) ;

__attribute__((used)) static bool
cgraph_recursive_inlining_p (struct cgraph_node *to,
        struct cgraph_node *what,
        const char **reason)
{
  bool recursive;
  if (to->global.inlined_to)
    recursive = what->decl == to->global.inlined_to->decl;
  else
    recursive = what->decl == to->decl;


  if (recursive && reason)
    *reason = (what->local.disregard_inline_limits
        ? N_("recursive inlining") : "");
  return recursive;
}
