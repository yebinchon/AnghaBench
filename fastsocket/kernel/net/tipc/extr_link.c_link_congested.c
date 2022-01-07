
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {scalar_t__ out_queue_size; scalar_t__* queue_limit; } ;



__attribute__((used)) static int link_congested(struct link *l_ptr)
{
 return (l_ptr->out_queue_size >= l_ptr->queue_limit[0]);
}
