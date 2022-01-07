
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ USItype ;
typedef scalar_t__ SItype ;
typedef scalar_t__ DFtype ;


 scalar_t__ SItype_MIN ;

USItype
__fixunsdfsi (DFtype a)
{
  if (a >= - (DFtype) SItype_MIN)
    return (SItype) (a + SItype_MIN) - SItype_MIN;
  return (SItype) a;
}
