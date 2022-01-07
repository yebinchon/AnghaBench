
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {void (* tx_callback ) (void*) ;void* tx_data; } ;


 int BUG_ON (int ) ;

int sport_set_tx_callback(struct sport_device *sport,
  void (*tx_callback)(void *), void *tx_data)
{
 BUG_ON(tx_callback == ((void*)0));
 sport->tx_callback = tx_callback;
 sport->tx_data = tx_data;

 return 0;
}
