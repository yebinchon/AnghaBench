
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state_in_ch; } ;
typedef TYPE_1__ EState ;


 int add_pair_to_block (TYPE_1__*) ;
 int init_RL (TYPE_1__*) ;

__attribute__((used)) static
void flush_RL ( EState* s )
{
   if (s->state_in_ch < 256) add_pair_to_block ( s );
   init_RL ( s );
}
