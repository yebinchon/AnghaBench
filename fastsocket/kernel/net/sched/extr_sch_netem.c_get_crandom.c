
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef unsigned long u32 ;
struct crndstate {scalar_t__ rho; unsigned long long last; } ;


 unsigned long net_random () ;

__attribute__((used)) static u32 get_crandom(struct crndstate *state)
{
 u64 value, rho;
 unsigned long answer;

 if (state->rho == 0)
  return net_random();

 value = net_random();
 rho = (u64)state->rho + 1;
 answer = (value * ((1ull<<32) - rho) + state->last * rho) >> 32;
 state->last = answer;
 return answer;
}
