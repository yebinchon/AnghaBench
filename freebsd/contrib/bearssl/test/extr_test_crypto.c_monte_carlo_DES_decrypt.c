
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int br_des_gen_cbcdec_keys ;
struct TYPE_3__ {int (* run ) (void*,unsigned char*,unsigned char*,int) ;int (* init ) (void*,unsigned char*,int) ;} ;
typedef TYPE_1__ br_block_cbcdec_class ;


 int check_equals (char*,unsigned char*,unsigned char*,int) ;
 int fflush (int ) ;
 int hextobin (unsigned char*,char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int printf (char*) ;
 int stdout ;
 int stub1 (void*,unsigned char*,int) ;
 int stub2 (void*,unsigned char*,unsigned char*,int) ;
 int xor_buf (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void
monte_carlo_DES_decrypt(const br_block_cbcdec_class *vd)
{
 unsigned char k1[8], k2[8], k3[8];
 unsigned char buf[8];
 unsigned char plain[8];
 int i, j;
 br_des_gen_cbcdec_keys v_dc;
 void *dc;

 dc = &v_dc;
 hextobin(k1, "79b63486e0ce37e0");
 hextobin(k2, "08e65231abae3710");
 hextobin(k3, "1f5eb69e925ef185");
 hextobin(buf, "2783aa729432fe96");
 hextobin(plain, "44937ca532cdbf98");
 for (i = 0; i < 400; i ++) {
  unsigned char key[24];

  memcpy(key, k1, 8);
  memcpy(key + 8, k2, 8);
  memcpy(key + 16, k3, 8);
  vd->init(dc, key, sizeof key);
  for (j = 0; j < 10000; j ++) {
   unsigned char iv[8];

   memset(iv, 0, sizeof iv);
   vd->run(dc, iv, buf, sizeof buf);
   switch (j) {
   case 9997: xor_buf(k3, buf, 8); break;
   case 9998: xor_buf(k2, buf, 8); break;
   case 9999: xor_buf(k1, buf, 8); break;
   }
  }
  printf(".");
  fflush(stdout);
 }
 printf(" ");
 fflush(stdout);
 check_equals("MC DES decrypt", buf, plain, sizeof buf);
}
