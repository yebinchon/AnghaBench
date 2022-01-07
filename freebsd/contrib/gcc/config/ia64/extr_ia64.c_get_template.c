
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_t ;


 int _0bbb_ ;
 int _0mbb_ ;
 int _0mfb_ ;
 int _0mfi_ ;
 int _0mib_ ;
 int _0mii_ ;
 int _0mlx_ ;
 int _0mmb_ ;
 int _0mmf_ ;
 int _0mmi_ ;
 int _1bbb_ ;
 int _1mbb_ ;
 int _1mfb_ ;
 int _1mfi_ ;
 int _1mib_ ;
 int _1mii_ ;
 int _1mlx_ ;
 int _1mmb_ ;
 int _1mmf_ ;
 int _1mmi_ ;
 int cpu_unit_reservation_p (int ,int ) ;
 int gcc_unreachable () ;

__attribute__((used)) static int
get_template (state_t state, int pos)
{
  switch (pos)
    {
    case 3:
      if (cpu_unit_reservation_p (state, _0mmi_))
 return 1;
      else if (cpu_unit_reservation_p (state, _0mii_))
 return 0;
      else if (cpu_unit_reservation_p (state, _0mmb_))
 return 7;
      else if (cpu_unit_reservation_p (state, _0mib_))
 return 6;
      else if (cpu_unit_reservation_p (state, _0mbb_))
 return 5;
      else if (cpu_unit_reservation_p (state, _0bbb_))
 return 4;
      else if (cpu_unit_reservation_p (state, _0mmf_))
 return 3;
      else if (cpu_unit_reservation_p (state, _0mfi_))
 return 2;
      else if (cpu_unit_reservation_p (state, _0mfb_))
 return 8;
      else if (cpu_unit_reservation_p (state, _0mlx_))
 return 9;
      else
 gcc_unreachable ();
    case 6:
      if (cpu_unit_reservation_p (state, _1mmi_))
 return 1;
      else if (cpu_unit_reservation_p (state, _1mii_))
 return 0;
      else if (cpu_unit_reservation_p (state, _1mmb_))
 return 7;
      else if (cpu_unit_reservation_p (state, _1mib_))
 return 6;
      else if (cpu_unit_reservation_p (state, _1mbb_))
 return 5;
      else if (cpu_unit_reservation_p (state, _1bbb_))
 return 4;
      else if (_1mmf_ >= 0 && cpu_unit_reservation_p (state, _1mmf_))
 return 3;
      else if (cpu_unit_reservation_p (state, _1mfi_))
 return 2;
      else if (cpu_unit_reservation_p (state, _1mfb_))
 return 8;
      else if (cpu_unit_reservation_p (state, _1mlx_))
 return 9;
      else
 gcc_unreachable ();
    default:
      gcc_unreachable ();
    }
}
