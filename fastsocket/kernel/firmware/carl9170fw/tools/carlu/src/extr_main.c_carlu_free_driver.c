
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int * tx_sent_queue; int resp_pend; int mem_lock; int resp_lock; } ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 unsigned int __AR9170_NUM_TXQ ;
 int dbg (char*) ;
 int frame_queue_kill (int *) ;
 int free (struct carlu*) ;

void carlu_free_driver(struct carlu *ar)
{
 unsigned int i;

 dbg("destroy driver struct.\n");
 SDL_DestroyMutex(ar->resp_lock);
 SDL_DestroyMutex(ar->mem_lock);
 SDL_DestroyCond(ar->resp_pend);

 for (i = 0; i < __AR9170_NUM_TXQ; i++)
  frame_queue_kill(&ar->tx_sent_queue[i]);

 free(ar);
}
