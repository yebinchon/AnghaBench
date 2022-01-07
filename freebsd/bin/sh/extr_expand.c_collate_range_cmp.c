
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int wcscoll (int*,int*) ;

__attribute__((used)) static int
collate_range_cmp(wchar_t c1, wchar_t c2)
{
 wchar_t s1[2], s2[2];

 s1[0] = c1;
 s1[1] = L'\0';
 s2[0] = c2;
 s2[1] = L'\0';
 return (wcscoll(s1, s2));
}
