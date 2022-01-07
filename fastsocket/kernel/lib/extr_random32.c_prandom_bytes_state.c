
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct rnd_state {int dummy; } ;


 unsigned char BITS_PER_BYTE ;
 unsigned char prandom32 (struct rnd_state*) ;
 int round_down (int,int) ;

void prandom_bytes_state(struct rnd_state *state, void *buf, int bytes)
{
 unsigned char *p = buf;
 int i;

 for (i = 0; i < round_down(bytes, sizeof(u32)); i += sizeof(u32)) {
  u32 random = prandom32(state);
  int j;

  for (j = 0; j < sizeof(u32); j++) {
   p[i + j] = random;
   random >>= BITS_PER_BYTE;
  }
 }
 if (i < bytes) {
  u32 random = prandom32(state);

  for (; i < bytes; i++) {
   p[i] = random;
   random >>= BITS_PER_BYTE;
  }
 }
}
