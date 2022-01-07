
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {TYPE_2__* next; } ;
struct TYPE_5__ {scalar_t__ kind; int type; TYPE_1__ u; } ;
typedef TYPE_2__ conversion ;


 scalar_t__ ck_ambig ;
 scalar_t__ ck_identity ;
 scalar_t__ ck_user ;
 int gcc_unreachable () ;

__attribute__((used)) static tree
source_type (conversion *t)
{
  for (;; t = t->u.next)
    {
      if (t->kind == ck_user
   || t->kind == ck_ambig
   || t->kind == ck_identity)
 return t->type;
    }
  gcc_unreachable ();
}
