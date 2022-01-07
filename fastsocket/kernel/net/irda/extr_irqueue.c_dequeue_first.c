
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* q_next; TYPE_1__* q_prev; } ;
typedef TYPE_2__ irda_queue_t ;
struct TYPE_5__ {TYPE_2__* q_next; } ;


 int IRDA_DEBUG (int,char*) ;

__attribute__((used)) static irda_queue_t *dequeue_first(irda_queue_t **queue)
{
 irda_queue_t *ret;

 IRDA_DEBUG( 4, "dequeue_first()\n");




 ret = *queue;

 if ( *queue == ((void*)0) ) {



 } else if ( (*queue)->q_next == *queue ) {




  *queue = ((void*)0);
 } else {



  (*queue)->q_prev->q_next = (*queue)->q_next;
  (*queue)->q_next->q_prev = (*queue)->q_prev;
  *queue = (*queue)->q_next;
 }




 return ret;
}
