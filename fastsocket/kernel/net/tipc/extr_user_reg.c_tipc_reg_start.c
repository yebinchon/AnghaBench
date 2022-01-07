
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__ callback; } ;
typedef int Handler ;


 size_t MAX_USERID ;
 scalar_t__ reg_callback ;
 int reg_init () ;
 int tipc_k_signal (int ,unsigned long) ;
 TYPE_1__* users ;

int tipc_reg_start(void)
{
 u32 u;
 int res;

 if ((res = reg_init()))
  return res;

 for (u = 1; u <= MAX_USERID; u++) {
  if (users[u].callback)
   tipc_k_signal((Handler)reg_callback,
          (unsigned long)&users[u]);
 }
 return 0;
}
