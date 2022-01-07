
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int alpha_breakpoint ;
typedef int CORE_ADDR ;



__attribute__((used)) static const unsigned char *
alpha_breakpoint_from_pc (CORE_ADDR *pcptr, int *lenptr)
{
  static const unsigned char alpha_breakpoint[] =
    { 0x80, 0, 0, 0 };

  *lenptr = sizeof(alpha_breakpoint);
  return (alpha_breakpoint);
}
