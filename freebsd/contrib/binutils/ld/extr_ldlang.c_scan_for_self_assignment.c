
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int name; } ;
struct TYPE_15__ {int str; } ;
struct TYPE_14__ {TYPE_8__* child; } ;
struct TYPE_13__ {TYPE_8__* src; int dst; } ;
struct TYPE_12__ {TYPE_8__* rhs; TYPE_8__* lhs; } ;
struct TYPE_11__ {TYPE_8__* rhs; TYPE_8__* lhs; } ;
struct TYPE_10__ {int node_class; } ;
struct TYPE_17__ {TYPE_7__ name; TYPE_6__ value; TYPE_5__ unary; TYPE_4__ assign; TYPE_3__ trinary; TYPE_2__ binary; TYPE_1__ type; } ;
typedef TYPE_8__ etree_type ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static bfd_boolean
scan_for_self_assignment (const char * dst, etree_type * rhs)
{
  if (rhs == ((void*)0) || dst == ((void*)0))
    return FALSE;

  switch (rhs->type.node_class)
    {
    case 134:
      return scan_for_self_assignment (dst, rhs->binary.lhs)
 || scan_for_self_assignment (dst, rhs->binary.rhs);

    case 130:
      return scan_for_self_assignment (dst, rhs->trinary.lhs)
 || scan_for_self_assignment (dst, rhs->trinary.rhs);

    case 135:
    case 131:
    case 132:
      if (strcmp (dst, rhs->assign.dst) == 0)
 return TRUE;
      return scan_for_self_assignment (dst, rhs->assign.src);

    case 129:
      return scan_for_self_assignment (dst, rhs->unary.child);

    case 128:
      if (rhs->value.str)
 return strcmp (dst, rhs->value.str) == 0;
      return FALSE;

    case 133:
      if (rhs->name.name)
 return strcmp (dst, rhs->name.name) == 0;
      return FALSE;

    default:
      break;
    }

  return FALSE;
}
