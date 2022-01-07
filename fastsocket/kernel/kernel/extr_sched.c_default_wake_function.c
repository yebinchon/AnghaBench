
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private; } ;
typedef TYPE_1__ wait_queue_t ;


 int try_to_wake_up (int ,unsigned int,int) ;

int default_wake_function(wait_queue_t *curr, unsigned mode, int wake_flags,
     void *key)
{
 return try_to_wake_up(curr->private, mode, wake_flags);
}
