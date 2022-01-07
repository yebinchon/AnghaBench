
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
shift_rows(unsigned *state)
{
 unsigned tmp;

 tmp = state[1];
 state[1] = state[5];
 state[5] = state[9];
 state[9] = state[13];
 state[13] = tmp;

 tmp = state[2];
 state[2] = state[10];
 state[10] = tmp;
 tmp = state[6];
 state[6] = state[14];
 state[14] = tmp;

 tmp = state[15];
 state[15] = state[11];
 state[11] = state[7];
 state[7] = state[3];
 state[3] = tmp;
}
