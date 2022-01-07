
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct frame {TYPE_1__ dcb; } ;
struct carlu {int tx_queue_lock; int tx_queue; } ;


 int BUG_ON (int) ;
 scalar_t__ SDL_mutexP (int ) ;
 int SDL_mutexV (int ) ;
 int carlusb_tx_pending (struct carlu*) ;
 int list_add_tail (int *,int *) ;

void carlusb_tx(struct carlu *ar, struct frame *frame)
{
 BUG_ON(SDL_mutexP(ar->tx_queue_lock) != 0);

 list_add_tail(&frame->dcb.list, &ar->tx_queue);
 SDL_mutexV(ar->tx_queue_lock);

 carlusb_tx_pending(ar);
}
