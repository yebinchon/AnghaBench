
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crndstate {unsigned long rho; int last; } ;


 int net_random () ;

__attribute__((used)) static void init_crandom(struct crndstate *state, unsigned long rho)
{
 state->rho = rho;
 state->last = net_random();
}
