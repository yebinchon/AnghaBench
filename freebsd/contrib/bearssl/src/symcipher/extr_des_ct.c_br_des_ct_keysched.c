
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_des_rev_skey (int *) ;
 int keysched_unit (int *,unsigned char const*) ;
 int memcpy (int *,int *,int) ;

unsigned
br_des_ct_keysched(uint32_t *skey, const void *key, size_t key_len)
{
 switch (key_len) {
 case 8:
  keysched_unit(skey, key);
  return 1;
 case 16:
  keysched_unit(skey, key);
  keysched_unit(skey + 32, (const unsigned char *)key + 8);
  br_des_rev_skey(skey + 32);
  memcpy(skey + 64, skey, 32 * sizeof *skey);
  return 3;
 default:
  keysched_unit(skey, key);
  keysched_unit(skey + 32, (const unsigned char *)key + 8);
  br_des_rev_skey(skey + 32);
  keysched_unit(skey + 64, (const unsigned char *)key + 16);
  return 3;
 }
}
