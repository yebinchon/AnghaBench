
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int UNKNOWN ;



 int gcc_unreachable () ;
 int rtx_equal_p (int ,int ) ;
 int swap_condition (int) ;

__attribute__((used)) static enum rtx_code
ix86_prepare_sse_fp_compare_args (rtx dest, enum rtx_code code,
      rtx *pop0, rtx *pop1)
{
  rtx tmp;

  switch (code)
    {
    case 136:
    case 133:



      return UNKNOWN;

    case 137:
    case 138:
    case 131:
    case 132:

      break;

    case 141:
    case 135:
    case 128:
    case 134:



      if (!dest || !rtx_equal_p (dest, *pop1))
 break;


    case 140:
    case 139:
    case 130:
    case 129:


      tmp = *pop0;
      *pop0 = *pop1;
      *pop1 = tmp;
      code = swap_condition (code);
      break;

    default:
      gcc_unreachable ();
    }

  return code;
}
