
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* S ;

__attribute__((used)) static void
sub_bytes(unsigned *state)
{
 int i;

 for (i = 0; i < 16; i ++) {
  state[i] = S[state[i]];
 }
}
