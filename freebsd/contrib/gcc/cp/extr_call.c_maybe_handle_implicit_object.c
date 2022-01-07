
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_8__ {scalar_t__ kind; int type; TYPE_1__ u; scalar_t__ this_p; } ;
typedef TYPE_2__ conversion ;


 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 TYPE_2__* build_identity_conv (int ,int ) ;
 int build_reference_type (int ) ;
 scalar_t__ ck_ptr ;
 scalar_t__ ck_qual ;
 TYPE_2__* direct_reference_binding (int ,TYPE_2__*) ;

__attribute__((used)) static void
maybe_handle_implicit_object (conversion **ics)
{
  if ((*ics)->this_p)
    {







      conversion *t = *ics;
      tree reference_type;




      reference_type = TREE_TYPE (t->type);
      reference_type = build_reference_type (reference_type);

      if (t->kind == ck_qual)
 t = t->u.next;
      if (t->kind == ck_ptr)
 t = t->u.next;
      t = build_identity_conv (TREE_TYPE (t->type), NULL_TREE);
      t = direct_reference_binding (reference_type, t);
      *ics = t;
    }
}
