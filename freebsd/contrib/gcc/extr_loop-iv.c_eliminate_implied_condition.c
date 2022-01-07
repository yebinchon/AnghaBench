
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int const0_rtx ;
 int const_true_rtx ;
 int gcc_unreachable () ;
 int implies_p (int ,int ) ;

__attribute__((used)) static void
eliminate_implied_condition (enum rtx_code op, rtx a, rtx *b)
{
  switch (op)
    {
    case 129:

      if (implies_p (a, *b))
 *b = const_true_rtx;
      break;

    case 128:

      if (implies_p (*b, a))
 *b = const0_rtx;
      break;

    default:
      gcc_unreachable ();
    }
}
