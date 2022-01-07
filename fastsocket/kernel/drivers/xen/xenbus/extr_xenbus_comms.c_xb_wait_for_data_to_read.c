
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wait_event_interruptible (int ,int ) ;
 int xb_data_to_read () ;
 int xb_waitq ;

int xb_wait_for_data_to_read(void)
{
 return wait_event_interruptible(xb_waitq, xb_data_to_read());
}
