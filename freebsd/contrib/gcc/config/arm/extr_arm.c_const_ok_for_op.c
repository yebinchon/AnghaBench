
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef int HOST_WIDE_INT ;



 int ARM_SIGN_EXTEND (int ) ;




 int const_ok_for_arm (int ) ;
 int gcc_unreachable () ;

__attribute__((used)) static int
const_ok_for_op (HOST_WIDE_INT i, enum rtx_code code)
{
  if (const_ok_for_arm (i))
    return 1;

  switch (code)
    {
    case 129:
      return const_ok_for_arm (ARM_SIGN_EXTEND (-i));

    case 130:
    case 128:
    case 131:
      return 0;

    case 132:
      return const_ok_for_arm (ARM_SIGN_EXTEND (~i));

    default:
      gcc_unreachable ();
    }
}
