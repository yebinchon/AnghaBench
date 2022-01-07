
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {void (* rx_callback ) (void*) ;void* rx_data; } ;


 int BUG_ON (int ) ;

int sport_set_rx_callback(struct sport_device *sport,
         void (*rx_callback)(void *), void *rx_data)
{
 BUG_ON(rx_callback == ((void*)0));
 sport->rx_callback = rx_callback;
 sport->rx_data = rx_data;

 return 0;
}
