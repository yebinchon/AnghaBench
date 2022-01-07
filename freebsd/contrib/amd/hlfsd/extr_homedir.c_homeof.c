
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* home; } ;


 TYPE_1__* untab ;
 int untab_index (char*) ;

char *
homeof(char *username)
{
  int idx;

  if ((idx = untab_index(username)) < 0)
    return (char *) ((void*)0);
  return untab[idx].home;
}
