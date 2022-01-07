
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {TYPE_2__* next; } ;
struct TYPE_5__ {scalar_t__ kind; int bad_p; int user_conv_p; TYPE_1__ u; int type; } ;
typedef TYPE_2__ conversion ;


 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 scalar_t__ ck_ref_bind ;

__attribute__((used)) static tree
maybe_handle_ref_bind (conversion **ics)
{
  if ((*ics)->kind == ck_ref_bind)
    {
      conversion *old_ics = *ics;
      tree type = TREE_TYPE (old_ics->type);
      *ics = old_ics->u.next;
      (*ics)->user_conv_p = old_ics->user_conv_p;
      (*ics)->bad_p = old_ics->bad_p;
      return type;
    }

  return NULL_TREE;
}
