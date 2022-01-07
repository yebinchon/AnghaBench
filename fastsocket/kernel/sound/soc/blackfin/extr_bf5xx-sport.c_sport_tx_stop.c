
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {scalar_t__ tx_run; int * curr_tx_desc; int * curr_rx_desc; scalar_t__ rx_run; } ;


 int sport_hook_tx_dummy (struct sport_device*) ;
 int sport_stop (struct sport_device*) ;

int sport_tx_stop(struct sport_device *sport)
{
 if (!sport->tx_run)
  return 0;
 if (sport->rx_run) {

  sport_hook_tx_dummy(sport);
 } else {

  sport_stop(sport);
  sport->curr_rx_desc = ((void*)0);
  sport->curr_tx_desc = ((void*)0);
 }

 sport->tx_run = 0;

 return 0;
}
