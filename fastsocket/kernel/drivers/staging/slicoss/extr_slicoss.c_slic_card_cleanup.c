
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sliccard {int loadtimer; scalar_t__ loadtimerset; } ;


 int del_timer (int *) ;
 int kfree (struct sliccard*) ;
 int slic_debug_card_destroy (struct sliccard*) ;

__attribute__((used)) static void slic_card_cleanup(struct sliccard *card)
{
 if (card->loadtimerset) {
  card->loadtimerset = 0;
  del_timer(&card->loadtimer);
 }

 slic_debug_card_destroy(card);

 kfree(card);
}
