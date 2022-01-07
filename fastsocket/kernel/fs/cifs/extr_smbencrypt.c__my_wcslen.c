
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;



__attribute__((used)) static int
_my_wcslen(__u16 *str)
{
 int len = 0;
 while (*str++ != 0)
  len++;
 return len;
}
