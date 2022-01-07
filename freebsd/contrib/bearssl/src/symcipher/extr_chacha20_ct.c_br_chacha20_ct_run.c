
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int QROUND (int,int,int,int) ;
 int br_dec32le (unsigned char const*) ;
 int br_enc32le (unsigned char*,int) ;
 int memcpy (int*,int const*,int) ;

uint32_t
br_chacha20_ct_run(const void *key,
 const void *iv, uint32_t cc, void *data, size_t len)
{
 unsigned char *buf;
 uint32_t kw[8], ivw[3];
 size_t u;

 static const uint32_t CW[] = {
  0x61707865, 0x3320646e, 0x79622d32, 0x6b206574
 };

 buf = data;
 for (u = 0; u < 8; u ++) {
  kw[u] = br_dec32le((const unsigned char *)key + (u << 2));
 }
 for (u = 0; u < 3; u ++) {
  ivw[u] = br_dec32le((const unsigned char *)iv + (u << 2));
 }
 while (len > 0) {
  uint32_t state[16];
  int i;
  size_t clen;
  unsigned char tmp[64];

  memcpy(&state[0], CW, sizeof CW);
  memcpy(&state[4], kw, sizeof kw);
  state[12] = cc;
  memcpy(&state[13], ivw, sizeof ivw);
  for (i = 0; i < 10; i ++) {
   do { state[0] += state[4]; state[12] ^= state[0]; state[12] = (state[12] << 16) | (state[12] >> 16); state[8] += state[12]; state[4] ^= state[8]; state[4] = (state[4] << 12) | (state[4] >> 20); state[0] += state[4]; state[12] ^= state[0]; state[12] = (state[12] << 8) | (state[12] >> 24); state[8] += state[12]; state[4] ^= state[8]; state[4] = (state[4] << 7) | (state[4] >> 25); } while (0);
   do { state[1] += state[5]; state[13] ^= state[1]; state[13] = (state[13] << 16) | (state[13] >> 16); state[9] += state[13]; state[5] ^= state[9]; state[5] = (state[5] << 12) | (state[5] >> 20); state[1] += state[5]; state[13] ^= state[1]; state[13] = (state[13] << 8) | (state[13] >> 24); state[9] += state[13]; state[5] ^= state[9]; state[5] = (state[5] << 7) | (state[5] >> 25); } while (0);
   do { state[2] += state[6]; state[14] ^= state[2]; state[14] = (state[14] << 16) | (state[14] >> 16); state[10] += state[14]; state[6] ^= state[10]; state[6] = (state[6] << 12) | (state[6] >> 20); state[2] += state[6]; state[14] ^= state[2]; state[14] = (state[14] << 8) | (state[14] >> 24); state[10] += state[14]; state[6] ^= state[10]; state[6] = (state[6] << 7) | (state[6] >> 25); } while (0);
   do { state[3] += state[7]; state[15] ^= state[3]; state[15] = (state[15] << 16) | (state[15] >> 16); state[11] += state[15]; state[7] ^= state[11]; state[7] = (state[7] << 12) | (state[7] >> 20); state[3] += state[7]; state[15] ^= state[3]; state[15] = (state[15] << 8) | (state[15] >> 24); state[11] += state[15]; state[7] ^= state[11]; state[7] = (state[7] << 7) | (state[7] >> 25); } while (0);
   do { state[0] += state[5]; state[15] ^= state[0]; state[15] = (state[15] << 16) | (state[15] >> 16); state[10] += state[15]; state[5] ^= state[10]; state[5] = (state[5] << 12) | (state[5] >> 20); state[0] += state[5]; state[15] ^= state[0]; state[15] = (state[15] << 8) | (state[15] >> 24); state[10] += state[15]; state[5] ^= state[10]; state[5] = (state[5] << 7) | (state[5] >> 25); } while (0);
   do { state[1] += state[6]; state[12] ^= state[1]; state[12] = (state[12] << 16) | (state[12] >> 16); state[11] += state[12]; state[6] ^= state[11]; state[6] = (state[6] << 12) | (state[6] >> 20); state[1] += state[6]; state[12] ^= state[1]; state[12] = (state[12] << 8) | (state[12] >> 24); state[11] += state[12]; state[6] ^= state[11]; state[6] = (state[6] << 7) | (state[6] >> 25); } while (0);
   do { state[2] += state[7]; state[13] ^= state[2]; state[13] = (state[13] << 16) | (state[13] >> 16); state[8] += state[13]; state[7] ^= state[8]; state[7] = (state[7] << 12) | (state[7] >> 20); state[2] += state[7]; state[13] ^= state[2]; state[13] = (state[13] << 8) | (state[13] >> 24); state[8] += state[13]; state[7] ^= state[8]; state[7] = (state[7] << 7) | (state[7] >> 25); } while (0);
   do { state[3] += state[4]; state[14] ^= state[3]; state[14] = (state[14] << 16) | (state[14] >> 16); state[9] += state[14]; state[4] ^= state[9]; state[4] = (state[4] << 12) | (state[4] >> 20); state[3] += state[4]; state[14] ^= state[3]; state[14] = (state[14] << 8) | (state[14] >> 24); state[9] += state[14]; state[4] ^= state[9]; state[4] = (state[4] << 7) | (state[4] >> 25); } while (0);



  }
  for (u = 0; u < 4; u ++) {
   br_enc32le(&tmp[u << 2], state[u] + CW[u]);
  }
  for (u = 4; u < 12; u ++) {
   br_enc32le(&tmp[u << 2], state[u] + kw[u - 4]);
  }
  br_enc32le(&tmp[48], state[12] + cc);
  for (u = 13; u < 16; u ++) {
   br_enc32le(&tmp[u << 2], state[u] + ivw[u - 13]);
  }

  clen = len < 64 ? len : 64;
  for (u = 0; u < clen; u ++) {
   buf[u] ^= tmp[u];
  }
  buf += clen;
  len -= clen;
  cc ++;
 }
 return cc;
}
