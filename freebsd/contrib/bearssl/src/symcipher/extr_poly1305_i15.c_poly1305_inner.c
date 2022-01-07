
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int NOT (int ) ;
 int P0I ;
 int P1305 ;
 int br_i15_add (int*,int*,int) ;
 int br_i15_decode_mod (int*,unsigned char*,int,int ) ;
 int br_i15_montymul (int*,int*,int const*,int ,int ) ;
 int br_i15_sub (int*,int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void
poly1305_inner(uint16_t *a, const uint16_t *r, const void *data, size_t len)
{
 const unsigned char *buf;

 buf = data;
 while (len > 0) {
  unsigned char tmp[16], rev[16];
  uint16_t b[10];
  uint32_t ctl;
  int i;




  if (len < 16) {
   memset(tmp, 0, sizeof tmp);
   memcpy(tmp, buf, len);
   buf = tmp;
   len = 16;
  }





  for (i = 0; i < 16; i ++) {
   rev[i] = buf[15 - i];
  }
  br_i15_decode_mod(b, rev, sizeof rev, P1305);
  b[9] |= 0x0100;





  ctl = br_i15_add(b, a, 1);
  ctl |= NOT(br_i15_sub(b, P1305, 0));
  br_i15_sub(b, P1305, ctl);




  br_i15_montymul(a, b, r, P1305, P0I);

  buf += 16;
  len -= 16;
 }
}
