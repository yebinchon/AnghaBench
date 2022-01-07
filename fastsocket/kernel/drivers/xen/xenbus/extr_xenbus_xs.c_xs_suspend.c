
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int response_mutex; int request_mutex; int watch_mutex; int transaction_mutex; } ;


 int down_write (int *) ;
 int mutex_lock (int *) ;
 TYPE_1__ xs_state ;

void xs_suspend(void)
{
 down_write(&xs_state.transaction_mutex);
 down_write(&xs_state.watch_mutex);
 mutex_lock(&xs_state.request_mutex);
 mutex_lock(&xs_state.response_mutex);
}
