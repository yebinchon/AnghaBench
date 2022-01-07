
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;


 int KEYLENGTH ;

__attribute__((used)) static inline int tkey_mismatch(t_key a, int offset, t_key b)
{
 t_key diff = a ^ b;
 int i = offset;

 if (!diff)
  return 0;
 while ((diff << i) >> (KEYLENGTH-1) == 0)
  i++;
 return i;
}
