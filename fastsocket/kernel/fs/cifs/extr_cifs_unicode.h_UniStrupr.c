
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__ UniToupper (scalar_t__) ;

__attribute__((used)) static inline wchar_t *
UniStrupr(register wchar_t *upin)
{
 register wchar_t *up;

 up = upin;
 while (*up) {
  *up = UniToupper(*up);
  up++;
 }
 return upin;
}
