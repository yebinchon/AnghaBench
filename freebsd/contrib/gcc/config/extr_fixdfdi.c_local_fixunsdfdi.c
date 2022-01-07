
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USItype ;
typedef int UDItype ;
typedef int DItype ;
typedef int DFtype ;



__attribute__((used)) static DItype
local_fixunsdfdi (DFtype a)
{
  USItype hi, lo;

  hi = a / (((UDItype) 1) << (sizeof (USItype) * 8));
  lo = a - ((DFtype) hi) * (((UDItype) 1) << (sizeof (USItype) * 8));
  return ((UDItype) hi << (sizeof (USItype) * 8)) | lo;
}
