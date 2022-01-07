
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int di_int ;


 int __fixsfdi (float) ;

di_int __stoi64(float a) { return __fixsfdi(a); }
