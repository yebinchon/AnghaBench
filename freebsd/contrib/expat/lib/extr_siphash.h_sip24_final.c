
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct siphash {char const c; int v3; int v0; int v2; int v1; int * buf; int * p; } ;


 int sip_round (struct siphash*,int) ;

__attribute__((used)) static uint64_t sip24_final(struct siphash *H) {
 const char left = (char)(H->p - H->buf);
 uint64_t b = (H->c + left) << 56;

 switch (left) {
 case 7: b |= (uint64_t)H->buf[6] << 48;

 case 6: b |= (uint64_t)H->buf[5] << 40;

 case 5: b |= (uint64_t)H->buf[4] << 32;

 case 4: b |= (uint64_t)H->buf[3] << 24;

 case 3: b |= (uint64_t)H->buf[2] << 16;

 case 2: b |= (uint64_t)H->buf[1] << 8;

 case 1: b |= (uint64_t)H->buf[0] << 0;

 case 0: break;
 }

 H->v3 ^= b;
 sip_round(H, 2);
 H->v0 ^= b;
 H->v2 ^= 0xff;
 sip_round(H, 4);

 return H->v0 ^ H->v1 ^ H->v2 ^ H->v3;
}
