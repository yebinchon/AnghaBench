
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sound_queue {scalar_t__ busy; int sync_queue; int open_queue; int action_queue; } ;


 int init_waitqueue_head (int *) ;

__attribute__((used)) static inline void sq_init_waitqueue(struct sound_queue *sq)
{
 init_waitqueue_head(&sq->action_queue);
 init_waitqueue_head(&sq->open_queue);
 init_waitqueue_head(&sq->sync_queue);
 sq->busy = 0;
}
