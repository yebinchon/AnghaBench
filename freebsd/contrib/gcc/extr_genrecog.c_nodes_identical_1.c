
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int mode; } ;
struct TYPE_4__ {int opno; int intval; int dup; int veclen; int c_test; TYPE_1__ pred; int code; int mode; int num_insns; } ;
struct decision_test {int type; TYPE_2__ u; } ;
 int gcc_unreachable () ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
nodes_identical_1 (struct decision_test *d1, struct decision_test *d2)
{
  switch (d1->type)
    {
    case 131:
      return d1->u.num_insns == d2->u.num_insns;

    case 132:
      return d1->u.mode == d2->u.mode;

    case 138:
      return d1->u.code == d2->u.code;

    case 130:
      return (d1->u.pred.mode == d2->u.pred.mode
       && strcmp (d1->u.pred.name, d2->u.pred.name) == 0);

    case 139:
      return strcmp (d1->u.c_test, d2->u.c_test) == 0;

    case 129:
    case 128:
      return d1->u.veclen == d2->u.veclen;

    case 137:
      return d1->u.dup == d2->u.dup;

    case 135:
    case 136:
    case 134:
    case 133:
      return d1->u.intval == d2->u.intval;

    case 140:
      return d1->u.opno == d2->u.opno;

    case 141:

      return 1;

    default:
      gcc_unreachable ();
    }
}
