
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* btr_user ;
struct TYPE_3__ {int other_use_this_block; scalar_t__ use; struct TYPE_3__* next; } ;


 unsigned int REGNO (scalar_t__) ;

__attribute__((used)) static void
note_other_use_this_block (unsigned int regno, btr_user users_this_bb)
{
  btr_user user;

  for (user = users_this_bb; user != ((void*)0); user = user->next)
    if (user->use && REGNO (user->use) == regno)
      user->other_use_this_block = 1;
}
