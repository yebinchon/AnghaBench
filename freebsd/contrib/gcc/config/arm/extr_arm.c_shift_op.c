
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef int HOST_WIDE_INT ;





 int GET_CODE (int ) ;
 int INTVAL (int ) ;






 int XEXP (int ,int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int int_log2 (int) ;

__attribute__((used)) static const char *
shift_op (rtx op, HOST_WIDE_INT *amountp)
{
  const char * mnem;
  enum rtx_code code = GET_CODE (op);

  switch (GET_CODE (XEXP (op, 1)))
    {
    case 131:
    case 128:
      *amountp = -1;
      break;

    case 134:
      *amountp = INTVAL (XEXP (op, 1));
      break;

    default:
      gcc_unreachable ();
    }

  switch (code)
    {
    case 136:
      mnem = "asl";
      break;

    case 135:
      mnem = "asr";
      break;

    case 133:
      mnem = "lsr";
      break;

    case 130:
      gcc_assert (*amountp != -1);
      *amountp = 32 - *amountp;



    case 129:
      mnem = "ror";
      break;

    case 132:


      gcc_assert (*amountp != -1);
      *amountp = int_log2 (*amountp);
      return "asl";

    default:
      gcc_unreachable ();
    }

  if (*amountp != -1)
    {







      if (code == 129)

 *amountp &= 31;
      else if (*amountp != (*amountp & 31))
 {
   if (code == 136)
     mnem = "lsr";
   *amountp = 32;
 }


      if (*amountp == 0)
 return ((void*)0);
    }

  return mnem;
}
