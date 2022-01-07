
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



void
br_des_rev_skey(uint32_t *skey)
{
 int i;

 for (i = 0; i < 16; i += 2) {
  uint32_t t;

  t = skey[i + 0];
  skey[i + 0] = skey[30 - i];
  skey[30 - i] = t;
  t = skey[i + 1];
  skey[i + 1] = skey[31 - i];
  skey[31 - i] = t;
 }
}
