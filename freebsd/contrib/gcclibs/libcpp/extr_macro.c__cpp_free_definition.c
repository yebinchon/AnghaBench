
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int type; } ;
typedef TYPE_1__ cpp_hashnode ;


 int NODE_BUILTIN ;
 int NODE_DISABLED ;
 int NT_VOID ;

void
_cpp_free_definition (cpp_hashnode *h)
{

  h->type = NT_VOID;

  h->flags &= ~(NODE_BUILTIN | NODE_DISABLED);
}
