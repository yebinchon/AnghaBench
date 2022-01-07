
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rnd_state {int s1; int s2; int s3; } ;


 void* TAUSWORTHE (int,int,int,unsigned long,int) ;

u32 prandom32(struct rnd_state *state)
{


 state->s1 = ((state->s1&4294967294UL)<<12) ^ (((state->s1 <<13) ^ state->s1)>>19);
 state->s2 = ((state->s2&4294967288UL)<<4) ^ (((state->s2 <<2) ^ state->s2)>>25);
 state->s3 = ((state->s3&4294967280UL)<<17) ^ (((state->s3 <<3) ^ state->s3)>>11);

 return (state->s1 ^ state->s2 ^ state->s3);
}
