
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int* event_pipe; int tx_queue_lock; int tx_queue; } ;


 int SDL_CreateMutex () ;
 int init_list_head (int *) ;

__attribute__((used)) static int carlusb_init(struct carlu *ar)
{
 init_list_head(&ar->tx_queue);
 ar->tx_queue_lock = SDL_CreateMutex();
 ar->event_pipe[0] = ar->event_pipe[1] = -1;

 return 0;
}
