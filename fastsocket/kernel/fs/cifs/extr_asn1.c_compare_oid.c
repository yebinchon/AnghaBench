
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
compare_oid(unsigned long *oid1, unsigned int oid1len,
     unsigned long *oid2, unsigned int oid2len)
{
 unsigned int i;

 if (oid1len != oid2len)
  return 0;
 else {
  for (i = 0; i < oid1len; i++) {
   if (oid1[i] != oid2[i])
    return 0;
  }
  return 1;
 }
}
