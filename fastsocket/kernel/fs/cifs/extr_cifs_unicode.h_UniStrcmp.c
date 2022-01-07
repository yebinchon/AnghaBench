
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



__attribute__((used)) static inline int
UniStrcmp(const wchar_t *ucs1, const wchar_t *ucs2)
{
 while ((*ucs1 == *ucs2) && *ucs1) {
  ucs1++;
  ucs2++;
 }
 return (int) *ucs1 - (int) *ucs2;
}
