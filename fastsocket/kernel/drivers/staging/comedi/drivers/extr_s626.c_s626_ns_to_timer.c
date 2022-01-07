
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int s626_ns_to_timer(int *nanosec, int round_mode)
{
 int divider, base;

 base = 500;

 switch (round_mode) {
 case 129:
 default:
  divider = (*nanosec + base / 2) / base;
  break;
 case 130:
  divider = (*nanosec) / base;
  break;
 case 128:
  divider = (*nanosec + base - 1) / base;
  break;
 }

 *nanosec = base * divider;
 return divider - 1;
}
