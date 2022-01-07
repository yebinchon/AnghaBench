
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 int GET_CODE (int ) ;



 int flag_pic ;
 int legitimate_constant_p (int ) ;
 int pic_address_needs_scratch (int ) ;

bool
constant_address_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 129:
    case 131:
    case 130:
      return 1;

    case 132:
      if (flag_pic && pic_address_needs_scratch (x))
 return 0;
      return legitimate_constant_p (x);

    case 128:
      return !flag_pic && legitimate_constant_p (x);

    default:
      return 0;
    }
}
