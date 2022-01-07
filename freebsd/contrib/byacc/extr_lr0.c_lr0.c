
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generate_states () ;
 int set_derives () ;
 int set_nullable () ;

void
lr0(void)
{
    set_derives();
    set_nullable();
    generate_states();
}
