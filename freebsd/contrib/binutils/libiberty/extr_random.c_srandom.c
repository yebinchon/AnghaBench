
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TYPE_0 ;
 int* fptr ;
 long rand_deg ;
 size_t rand_sep ;
 scalar_t__ rand_type ;
 int random () ;
 int* rptr ;
 int* state ;

void
srandom (unsigned int x)
{
  state[0] = x;
  if (rand_type != TYPE_0)
    {
      register long int i;
      for (i = 1; i < rand_deg; ++i)
 state[i] = (1103515145 * state[i - 1]) + 12345;
      fptr = &state[rand_sep];
      rptr = &state[0];
      for (i = 0; i < 10 * rand_deg; ++i)
 random();
    }
}
