
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* next; } ;
struct TYPE_6__ {scalar_t__ kind; int type; TYPE_1__ u; } ;
typedef TYPE_2__ conversion ;


 scalar_t__ ck_ambig ;
 scalar_t__ ck_identity ;
 scalar_t__ ck_lvalue ;
 scalar_t__ ck_rvalue ;
 scalar_t__ ck_user ;
 scalar_t__ same_type_p (int ,int ) ;

__attribute__((used)) static bool
is_subseq (conversion *ics1, conversion *ics2)
{




  while (ics1->kind == ck_rvalue
  || ics1->kind == ck_lvalue)
    ics1 = ics1->u.next;

  while (1)
    {
      while (ics2->kind == ck_rvalue
      || ics2->kind == ck_lvalue)
 ics2 = ics2->u.next;

      if (ics2->kind == ck_user
   || ics2->kind == ck_ambig
   || ics2->kind == ck_identity)




 return 0;

      ics2 = ics2->u.next;

      if (ics2->kind == ics1->kind
   && same_type_p (ics2->type, ics1->type)
   && same_type_p (ics2->u.next->type,
     ics1->u.next->type))
 return 1;
    }
}
