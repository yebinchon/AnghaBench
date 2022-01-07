
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ write_idx; } ;


 int pc ;
 TYPE_1__* tos ;

__attribute__((used)) static void
remchar ()
{
  if (tos->write_idx)
    tos->write_idx--;
  pc++;
}
