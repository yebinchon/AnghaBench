
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
add_round_key(unsigned *state, const uint32_t *skeys)
{
 int i;

 for (i = 0; i < 16; i += 4) {
  uint32_t k;

  k = *skeys ++;
  state[i + 0] ^= (unsigned)(k >> 24);
  state[i + 1] ^= (unsigned)(k >> 16) & 0xFF;
  state[i + 2] ^= (unsigned)(k >> 8) & 0xFF;
  state[i + 3] ^= (unsigned)k & 0xFF;
 }
}
