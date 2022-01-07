
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int personality; } ;


 int ADDR_NO_RANDOMIZE ;
 int PF_RANDOMIZE ;
 TYPE_1__* current ;

__attribute__((used)) static bool should_randomize(void)
{
 return (current->flags & PF_RANDOMIZE) &&
  !(current->personality & ADDR_NO_RANDOMIZE);
}
