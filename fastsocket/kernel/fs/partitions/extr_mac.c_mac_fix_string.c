
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void mac_fix_string(char *stg, int len)
{
 int i;

 for (i = len - 1; i >= 0 && stg[i] == ' '; i--)
  stg[i] = 0;
}
