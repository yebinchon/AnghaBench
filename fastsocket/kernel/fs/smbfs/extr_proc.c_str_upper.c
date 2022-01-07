
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
str_upper(char *name, int len)
{
 while (len--)
 {
  if (*name >= 'a' && *name <= 'z')
   *name -= ('a' - 'A');
  name++;
 }
}
