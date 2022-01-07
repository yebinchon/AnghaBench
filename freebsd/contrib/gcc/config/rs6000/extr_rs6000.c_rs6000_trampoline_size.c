
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_ABI ;
 int TARGET_32BIT ;
 int gcc_unreachable () ;

int
rs6000_trampoline_size (void)
{
  int ret = 0;

  switch (DEFAULT_ABI)
    {
    default:
      gcc_unreachable ();

    case 130:
      ret = (TARGET_32BIT) ? 12 : 24;
      break;

    case 129:
    case 128:
      ret = (TARGET_32BIT) ? 40 : 48;
      break;
    }

  return ret;
}
