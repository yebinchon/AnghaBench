
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* type_p ;
struct TYPE_5__ {TYPE_3__* p; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
struct TYPE_7__ {int kind; TYPE_2__ u; } ;






__attribute__((used)) static int
contains_scalar_p (type_p t)
{
  switch (t->kind)
    {
    case 128:
    case 129:
      return 0;
    case 130:
      return contains_scalar_p (t->u.a.p);
    default:


      return 1;
    }
}
