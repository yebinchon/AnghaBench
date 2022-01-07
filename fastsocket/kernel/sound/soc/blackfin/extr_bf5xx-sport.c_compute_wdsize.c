
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDSIZE_16 ;
 int WDSIZE_32 ;
 int WDSIZE_8 ;

__attribute__((used)) static inline int compute_wdsize(size_t wdsize)
{
 switch (wdsize) {
 case 1:
  return WDSIZE_8;
 case 2:
  return WDSIZE_16;
 case 4:
 default:
  return WDSIZE_32;
 }
}
