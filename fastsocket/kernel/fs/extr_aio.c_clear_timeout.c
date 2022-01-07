
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_timeout {int timer; } ;


 int del_singleshot_timer_sync (int *) ;

__attribute__((used)) static inline void clear_timeout(struct aio_timeout *to)
{
 del_singleshot_timer_sync(&to->timer);
}
