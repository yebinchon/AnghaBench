
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_in_ch; scalar_t__ state_in_len; } ;
typedef TYPE_1__ EState ;



__attribute__((used)) static
void init_RL ( EState* s )
{
   s->state_in_ch = 256;
   s->state_in_len = 0;
}
