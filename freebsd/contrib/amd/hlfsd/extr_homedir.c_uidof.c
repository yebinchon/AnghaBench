
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uid; } ;


 int INVALIDID ;
 TYPE_1__* untab ;
 int untab_index (char*) ;

int
uidof(char *username)
{
  int idx;

  if ((idx = untab_index(username)) < 0)
    return INVALIDID;
  return untab[idx].uid;
}
