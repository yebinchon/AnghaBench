
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct debug_write_fns {int (* typed_constant ) (void*,int ,int ) ;int (* float_constant ) (void*,int ,int ) ;int (* int_constant ) (void*,int ,int ) ;int (* variable ) (void*,int ,int ,int ) ;int (* tag ) (void*,int ) ;int (* typdef ) (void*,int ) ;} ;
struct TYPE_6__ {TYPE_2__* typed_constant; int float_constant; int int_constant; int function; TYPE_1__* variable; int tag; int type; } ;
struct debug_name {int kind; TYPE_3__ u; int name; int linkage; } ;
struct debug_handle {int dummy; } ;
typedef int bfd_boolean ;
struct TYPE_5__ {int val; int type; } ;
struct TYPE_4__ {int val; int kind; int type; } ;
 int FALSE ;
 int TRUE ;
 int abort () ;
 int debug_write_function (struct debug_handle*,struct debug_write_fns const*,void*,int ,int ,int ) ;
 int debug_write_type (struct debug_handle*,struct debug_write_fns const*,void*,int ,struct debug_name*) ;
 int stub1 (void*,int ) ;
 int stub2 (void*,int ) ;
 int stub3 (void*,int ,int ,int ) ;
 int stub4 (void*,int ,int ) ;
 int stub5 (void*,int ,int ) ;
 int stub6 (void*,int ,int ) ;

__attribute__((used)) static bfd_boolean
debug_write_name (struct debug_handle *info,
    const struct debug_write_fns *fns, void *fhandle,
    struct debug_name *n)
{
  switch (n->kind)
    {
    case 130:
      if (! debug_write_type (info, fns, fhandle, n->u.type, n)
   || ! (*fns->typdef) (fhandle, n->name))
 return FALSE;
      return TRUE;
    case 131:
      if (! debug_write_type (info, fns, fhandle, n->u.tag, n))
 return FALSE;
      return (*fns->tag) (fhandle, n->name);
    case 128:
      if (! debug_write_type (info, fns, fhandle, n->u.variable->type,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->variable) (fhandle, n->name, n->u.variable->kind,
          n->u.variable->val);
    case 133:
      return debug_write_function (info, fns, fhandle, n->name,
       n->linkage, n->u.function);
    case 132:
      return (*fns->int_constant) (fhandle, n->name, n->u.int_constant);
    case 134:
      return (*fns->float_constant) (fhandle, n->name, n->u.float_constant);
    case 129:
      if (! debug_write_type (info, fns, fhandle, n->u.typed_constant->type,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->typed_constant) (fhandle, n->name,
         n->u.typed_constant->val);
    default:
      abort ();
      return FALSE;
    }

}
