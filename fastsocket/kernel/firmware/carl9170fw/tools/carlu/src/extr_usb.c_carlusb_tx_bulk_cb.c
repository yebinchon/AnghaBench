
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_transfer {scalar_t__ user_data; } ;
struct frame {scalar_t__ dev; } ;
struct carlu {scalar_t__ tx_stream; int tx_queue_lock; int tx_queue_len; } ;


 int BUG_ON (int) ;
 scalar_t__ SDL_mutexP (int ) ;
 int SDL_mutexV (int ) ;
 int carlusb_tx_cb (struct carlu*,struct frame*) ;
 int carlusb_tx_pending (struct carlu*) ;
 int frame_pull (struct frame*,int) ;

__attribute__((used)) static void carlusb_tx_bulk_cb(struct libusb_transfer *transfer)
{
 struct frame *frame = (void *) transfer->user_data;
 struct carlu *ar = (void *) frame->dev;

 BUG_ON(SDL_mutexP(ar->tx_queue_lock) != 0);
 ar->tx_queue_len--;
 SDL_mutexV(ar->tx_queue_lock);

 if (ar->tx_stream)
  frame_pull(frame, 4);

 carlusb_tx_cb(ar, frame);
 carlusb_tx_pending(ar);
}
