
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* run ) (TYPE_1__ const**,unsigned char*,unsigned char*,int) ;int (* init ) (TYPE_1__ const**,unsigned char*,size_t) ;} ;
typedef TYPE_1__ br_block_cbcenc_class ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ br_aes_gen_cbcenc_keys ;


 int check_equals (char*,unsigned char*,unsigned char*,int) ;
 int fflush (int ) ;
 size_t hextobin (unsigned char*,char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int printf (char*) ;
 int stdout ;
 int stub1 (TYPE_1__ const**,unsigned char*,size_t) ;
 int stub2 (TYPE_1__ const**,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void
monte_carlo_AES_encrypt(const br_block_cbcenc_class *ve,
 char *skey, char *splain, char *scipher)
{
 unsigned char key[32];
 unsigned char buf[16];
 unsigned char pbuf[16];
 unsigned char cipher[16];
 size_t key_len;
 int i, j, k;
 br_aes_gen_cbcenc_keys v_ec;
 const br_block_cbcenc_class **ec;

 ec = &v_ec.vtable;
 key_len = hextobin(key, skey);
 hextobin(buf, splain);
 hextobin(cipher, scipher);
 for (i = 0; i < 100; i ++) {
  ve->init(ec, key, key_len);
  for (j = 0; j < 1000; j ++) {
   unsigned char iv[16];

   memcpy(pbuf, buf, sizeof buf);
   memset(iv, 0, sizeof iv);
   ve->run(ec, iv, buf, sizeof buf);
  }
  switch (key_len) {
  case 16:
   for (k = 0; k < 16; k ++) {
    key[k] ^= buf[k];
   }
   break;
  case 24:
   for (k = 0; k < 8; k ++) {
    key[k] ^= pbuf[8 + k];
   }
   for (k = 0; k < 16; k ++) {
    key[8 + k] ^= buf[k];
   }
   break;
  default:
   for (k = 0; k < 16; k ++) {
    key[k] ^= pbuf[k];
    key[16 + k] ^= buf[k];
   }
   break;
  }
  printf(".");
  fflush(stdout);
 }
 printf(" ");
 fflush(stdout);
 check_equals("MC AES encrypt", buf, cipher, sizeof buf);
}
