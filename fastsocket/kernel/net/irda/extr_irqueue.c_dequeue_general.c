
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* q_next; TYPE_1__* q_prev; } ;
typedef TYPE_2__ irda_queue_t ;
struct TYPE_6__ {TYPE_2__* q_next; } ;


 int IRDA_DEBUG (int,char*) ;

__attribute__((used)) static irda_queue_t *dequeue_general(irda_queue_t **queue, irda_queue_t* element)
{
 irda_queue_t *ret;

 IRDA_DEBUG( 4, "dequeue_general()\n");




 ret = *queue;

 if ( *queue == ((void*)0) ) {



 } else if ( (*queue)->q_next == *queue ) {




  *queue = ((void*)0);

 } else {



  element->q_prev->q_next = element->q_next;
  element->q_next->q_prev = element->q_prev;
  if ( (*queue) == element)
   (*queue) = element->q_next;
 }




 return ret;
}
