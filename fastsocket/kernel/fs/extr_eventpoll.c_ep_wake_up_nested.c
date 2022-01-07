
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int wake_up_poll (int *,unsigned long) ;

__attribute__((used)) static inline void ep_wake_up_nested(wait_queue_head_t *wqueue,
         unsigned long events, int subclass)
{
 wake_up_poll(wqueue, events);
}
