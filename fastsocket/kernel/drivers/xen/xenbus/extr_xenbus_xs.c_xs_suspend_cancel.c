
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transaction_mutex; int watch_mutex; int request_mutex; int response_mutex; } ;


 int mutex_unlock (int *) ;
 int up_write (int *) ;
 TYPE_1__ xs_state ;

void xs_suspend_cancel(void)
{
 mutex_unlock(&xs_state.response_mutex);
 mutex_unlock(&xs_state.request_mutex);
 up_write(&xs_state.watch_mutex);
 up_write(&xs_state.transaction_mutex);
}
