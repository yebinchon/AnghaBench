
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_aes_big_ctr_keys ;


 int br_aes_big_ctr_init (int *,void const*,size_t) ;
 int br_aes_big_ctr_run (int *,unsigned char*,int ,unsigned char*,int) ;
 int br_dec32be (unsigned char*) ;
 int memcpy (void*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void
do_aes_ctrcbc(const void *key, size_t key_len, int encrypt,
 void *ctr, void *cbcmac, unsigned char *data, size_t len)
{
 br_aes_big_ctr_keys bc;
 int i;

 br_aes_big_ctr_init(&bc, key, key_len);
 for (i = 0; i < 2; i ++) {




  if (cbcmac != ((void*)0)
   && ((encrypt && i == 1) || (!encrypt && i == 0)))
  {
   unsigned char zz[16];
   size_t u;

   memcpy(zz, cbcmac, sizeof zz);
   for (u = 0; u < len; u += 16) {
    unsigned char tmp[16];
    size_t v;

    for (v = 0; v < 16; v ++) {
     tmp[v] = zz[v] ^ data[u + v];
    }
    memset(zz, 0, sizeof zz);
    br_aes_big_ctr_run(&bc,
     tmp, br_dec32be(tmp + 12), zz, 16);
   }
   memcpy(cbcmac, zz, sizeof zz);
  }







  if (ctr != ((void*)0) && i == 0) {
   unsigned char zz[16];
   size_t u;

   memcpy(zz, ctr, sizeof zz);
   for (u = 0; u < len; u += 16) {
    int i;

    br_aes_big_ctr_run(&bc,
     zz, br_dec32be(zz + 12), data + u, 16);
    for (i = 15; i >= 0; i --) {
     zz[i] = (zz[i] + 1) & 0xFF;
     if (zz[i] != 0) {
      break;
     }
    }
   }
   memcpy(ctr, zz, sizeof zz);
  }
 }
}
