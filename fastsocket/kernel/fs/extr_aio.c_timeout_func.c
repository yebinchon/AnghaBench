
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_timeout {int timed_out; int p; } ;


 int wake_up_process (int ) ;

__attribute__((used)) static void timeout_func(unsigned long data)
{
 struct aio_timeout *to = (struct aio_timeout *)data;

 to->timed_out = 1;
 wake_up_process(to->p);
}
