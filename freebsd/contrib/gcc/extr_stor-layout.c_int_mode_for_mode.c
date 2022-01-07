
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_CLASS (int) ;
 int gcc_unreachable () ;
 int mode_for_size (int ,int const,int ) ;

enum machine_mode
int_mode_for_mode (enum machine_mode mode)
{
  switch (GET_MODE_CLASS (mode))
    {
    case 132:
    case 131:
      break;

    case 135:
    case 136:
    case 133:
    case 134:
    case 128:
    case 129:
      mode = mode_for_size (GET_MODE_BITSIZE (mode), 132, 0);
      break;

    case 130:
      if (mode == BLKmode)
 break;



    case 137:
    default:
      gcc_unreachable ();
    }

  return mode;
}
