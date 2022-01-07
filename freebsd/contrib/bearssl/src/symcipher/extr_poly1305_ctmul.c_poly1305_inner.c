
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int M (int,int) ;
 int br_dec32le (unsigned char const*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void
poly1305_inner(uint32_t *acc, const uint32_t *r, const void *data, size_t len)
{
 const unsigned char *buf;
 uint32_t a0, a1, a2, a3, a4;
 uint32_t r0, r1, r2, r3, r4;
 uint32_t u1, u2, u3, u4;

 r0 = r[0];
 r1 = r[1];
 r2 = r[2];
 r3 = r[3];
 r4 = r[4];

 u1 = r1 * 5;
 u2 = r2 * 5;
 u3 = r3 * 5;
 u4 = r4 * 5;

 a0 = acc[0];
 a1 = acc[1];
 a2 = acc[2];
 a3 = acc[3];
 a4 = acc[4];

 buf = data;
 while (len > 0) {
  uint64_t w0, w1, w2, w3, w4;
  uint64_t c;
  unsigned char tmp[16];




  if (len < 16) {
   memset(tmp, 0, sizeof tmp);
   memcpy(tmp, buf, len);
   buf = tmp;
   len = 16;
  }





  a0 += br_dec32le(buf) & 0x03FFFFFF;
  a1 += (br_dec32le(buf + 3) >> 2) & 0x03FFFFFF;
  a2 += (br_dec32le(buf + 6) >> 4) & 0x03FFFFFF;
  a3 += (br_dec32le(buf + 9) >> 6) & 0x03FFFFFF;
  a4 += (br_dec32le(buf + 12) >> 8) | 0x01000000;






  w0 = ((uint64_t)(a0) * (uint64_t)(r0)) + ((uint64_t)(a1) * (uint64_t)(u4)) + ((uint64_t)(a2) * (uint64_t)(u3)) + ((uint64_t)(a3) * (uint64_t)(u2)) + ((uint64_t)(a4) * (uint64_t)(u1));
  w1 = ((uint64_t)(a0) * (uint64_t)(r1)) + ((uint64_t)(a1) * (uint64_t)(r0)) + ((uint64_t)(a2) * (uint64_t)(u4)) + ((uint64_t)(a3) * (uint64_t)(u3)) + ((uint64_t)(a4) * (uint64_t)(u2));
  w2 = ((uint64_t)(a0) * (uint64_t)(r2)) + ((uint64_t)(a1) * (uint64_t)(r1)) + ((uint64_t)(a2) * (uint64_t)(r0)) + ((uint64_t)(a3) * (uint64_t)(u4)) + ((uint64_t)(a4) * (uint64_t)(u3));
  w3 = ((uint64_t)(a0) * (uint64_t)(r3)) + ((uint64_t)(a1) * (uint64_t)(r2)) + ((uint64_t)(a2) * (uint64_t)(r1)) + ((uint64_t)(a3) * (uint64_t)(r0)) + ((uint64_t)(a4) * (uint64_t)(u4));
  w4 = ((uint64_t)(a0) * (uint64_t)(r4)) + ((uint64_t)(a1) * (uint64_t)(r3)) + ((uint64_t)(a2) * (uint64_t)(r2)) + ((uint64_t)(a3) * (uint64_t)(r1)) + ((uint64_t)(a4) * (uint64_t)(r0));
  c = w0 >> 26;
  a0 = (uint32_t)w0 & 0x3FFFFFF;
  w1 += c;
  c = w1 >> 26;
  a1 = (uint32_t)w1 & 0x3FFFFFF;
  w2 += c;
  c = w2 >> 26;
  a2 = (uint32_t)w2 & 0x3FFFFFF;
  w3 += c;
  c = w3 >> 26;
  a3 = (uint32_t)w3 & 0x3FFFFFF;
  w4 += c;
  c = w4 >> 26;
  a4 = (uint32_t)w4 & 0x3FFFFFF;
  a0 += (uint32_t)c * 5;
  a1 += a0 >> 26;
  a0 &= 0x3FFFFFF;

  buf += 16;
  len -= 16;
 }

 acc[0] = a0;
 acc[1] = a1;
 acc[2] = a2;
 acc[3] = a3;
 acc[4] = a4;
}
