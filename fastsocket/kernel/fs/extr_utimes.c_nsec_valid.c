
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long UTIME_NOW ;
 long UTIME_OMIT ;

__attribute__((used)) static bool nsec_valid(long nsec)
{
 if (nsec == UTIME_OMIT || nsec == UTIME_NOW)
  return 1;

 return nsec >= 0 && nsec <= 999999999;
}
