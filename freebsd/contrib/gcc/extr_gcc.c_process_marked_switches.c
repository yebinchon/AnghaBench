
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ordering; } ;


 int give_switch (int,int ) ;
 int n_switches ;
 TYPE_1__* switches ;

__attribute__((used)) static inline void
process_marked_switches (void)
{
  int i;

  for (i = 0; i < n_switches; i++)
    if (switches[i].ordering == 1)
      {
 switches[i].ordering = 0;
 give_switch (i, 0);
      }
}
