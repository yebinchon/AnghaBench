
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int byte_sub (unsigned char*,unsigned char*) ;
 int mix_column (unsigned char*,unsigned char*) ;
 int next_key (unsigned char*,int) ;
 int shift_row (unsigned char*,unsigned char*) ;
 int xor_128 (unsigned char*,unsigned char*,unsigned char*) ;

void aes128k128d(unsigned char *key, unsigned char *data, unsigned char *ciphertext)
{
 int round;
 int i;
 unsigned char intermediatea[16];
 unsigned char intermediateb[16];
 unsigned char round_key[16];

 for(i=0; i<16; i++) round_key[i] = key[i];

 for (round = 0; round < 11; round++)
 {
  if (round == 0)
  {
   xor_128(round_key, data, ciphertext);
   next_key(round_key, round);
  }
  else if (round == 10)
  {
   byte_sub(ciphertext, intermediatea);
   shift_row(intermediatea, intermediateb);
   xor_128(intermediateb, round_key, ciphertext);
  }
  else
  {
   byte_sub(ciphertext, intermediatea);
   shift_row(intermediatea, intermediateb);
   mix_column(&intermediateb[0], &intermediatea[0]);
   mix_column(&intermediateb[4], &intermediatea[4]);
   mix_column(&intermediateb[8], &intermediatea[8]);
   mix_column(&intermediateb[12], &intermediatea[12]);
   xor_128(intermediatea, round_key, ciphertext);
   next_key(round_key, round);
  }
 }

}
