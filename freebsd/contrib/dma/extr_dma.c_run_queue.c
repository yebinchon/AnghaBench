
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int queue; } ;
struct qitem {int dummy; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int deliver (struct qitem*) ;
 struct qitem* go_background (struct queue*) ;

void
run_queue(struct queue *queue)
{
 struct qitem *it;

 if (LIST_EMPTY(&queue->queue))
  return;

 it = go_background(queue);
 deliver(it);

}
