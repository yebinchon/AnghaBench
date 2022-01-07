
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_clobbers_to_add; } ;
struct TYPE_4__ {char* name; int mode; } ;
struct TYPE_6__ {int num_insns; int veclen; int dup; TYPE_2__ insn; int c_test; TYPE_1__ pred; scalar_t__ intval; int code; int mode; } ;
struct decision_test {int type; TYPE_3__ u; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;
 char* GET_MODE_NAME (int ) ;
 int RECOG ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int print_c_condition (int ) ;
 int print_code (int ) ;
 int print_host_wide_int (scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
write_cond (struct decision_test *p, int depth,
     enum routine_type subroutine_type)
{
  switch (p->type)
    {
    case 131:
      printf ("peep2_current_count >= %d", p->u.num_insns);
      break;

    case 132:
      printf ("GET_MODE (x%d) == %smode", depth, GET_MODE_NAME (p->u.mode));
      break;

    case 139:
      printf ("GET_CODE (x%d) == ", depth);
      print_code (p->u.code);
      break;

    case 129:
      printf ("XVECLEN (x%d, 0) == %d", depth, p->u.veclen);
      break;

    case 135:
      printf ("XINT (x%d, 0) == %d", depth, (int) p->u.intval);
      break;

    case 136:
      printf ("XINT (x%d, 1) == %d", depth, (int) p->u.intval);
      break;

    case 134:
    case 133:
      printf ("XWINT (x%d, 0) == ", depth);
      print_host_wide_int (p->u.intval);
      break;

    case 138:
      printf ("x%d == const_int_rtx[MAX_SAVED_CONST_INT + (%d)]",
       depth, (int) p->u.intval);
      break;

    case 128:
      printf ("XVECLEN (x%d, 0) >= %d", depth, p->u.veclen);
      break;

    case 137:
      printf ("rtx_equal_p (x%d, operands[%d])", depth, p->u.dup);
      break;

    case 130:
      printf ("%s (x%d, %smode)", p->u.pred.name, depth,
       GET_MODE_NAME (p->u.pred.mode));
      break;

    case 140:
      print_c_condition (p->u.c_test);
      break;

    case 141:
      gcc_assert (subroutine_type == RECOG);
      gcc_assert (p->u.insn.num_clobbers_to_add);
      printf ("pnum_clobbers != NULL");
      break;

    default:
      gcc_unreachable ();
    }
}
