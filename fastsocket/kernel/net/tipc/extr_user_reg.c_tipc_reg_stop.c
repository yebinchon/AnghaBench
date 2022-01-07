
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ callback; } ;


 int MAX_USERID ;
 int kfree (TYPE_1__*) ;
 int reg_callback (TYPE_1__*) ;
 TYPE_1__* users ;

void tipc_reg_stop(void)
{
 int id;

 if (!users)
  return;

 for (id = 1; id <= MAX_USERID; id++) {
  if (users[id].callback)
   reg_callback(&users[id]);
 }
 kfree(users);
 users = ((void*)0);
}
