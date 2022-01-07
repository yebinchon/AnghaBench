
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wq_ninqueue; int wq_donequeue; int wq_queue; } ;
typedef TYPE_1__ workqueue_t ;


 int assert (int) ;
 int fifo_free (int ,int *) ;
 int fifo_len (int ) ;

__attribute__((used)) static void
init_phase_two(workqueue_t *wq)
{
 int num;
 wq->wq_ninqueue = num = fifo_len(wq->wq_donequeue);
 while (num != 1) {
  wq->wq_ninqueue += num / 2;
  num = num / 2 + num % 2;
 }





 assert(fifo_len(wq->wq_queue) == 0);
 fifo_free(wq->wq_queue, ((void*)0));
 wq->wq_queue = wq->wq_donequeue;
}
