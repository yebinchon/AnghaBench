
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HOST_WIDE_INT ;


 int DImode ;
 int GEN_INT (int) ;
 int SImode ;
 int TARGET_EXTIMM ;
 int gcc_unreachable () ;
 int s390_single_part (int ,int ,int ,int) ;
 int trunc_int_for_mode (int,int ) ;

int
s390_O_constraint_str (const char c, HOST_WIDE_INT value)
{
  if (!TARGET_EXTIMM)
    return 0;

  switch (c)
    {
    case 's':
      return trunc_int_for_mode (value, SImode) == value;

    case 'p':
      return value == 0
 || s390_single_part (GEN_INT (value), DImode, SImode, 0) == 1;

    case 'n':
      return value == -1
 || s390_single_part (GEN_INT (value), DImode, SImode, -1) == 1;

    default:
      gcc_unreachable ();
    }
}
