
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
remove_suffix (char *name, int len)
{
  int i;

  for (i = 2; i < 8 && len > i; i++)
    {
      if (name[len - i] == '.')
 {
   name[len - i] = '\0';
   break;
 }
    }
}
