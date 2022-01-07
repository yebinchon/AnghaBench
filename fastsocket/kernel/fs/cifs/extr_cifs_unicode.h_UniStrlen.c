
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static inline size_t
UniStrlen(const wchar_t *ucs1)
{
 int i = 0;

 while (*ucs1++)
  i++;
 return i;
}
