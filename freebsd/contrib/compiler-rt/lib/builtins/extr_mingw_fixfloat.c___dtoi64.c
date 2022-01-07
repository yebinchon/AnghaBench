
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int di_int ;


 int __fixdfdi (double) ;

di_int __dtoi64(double a) { return __fixdfdi(a); }
