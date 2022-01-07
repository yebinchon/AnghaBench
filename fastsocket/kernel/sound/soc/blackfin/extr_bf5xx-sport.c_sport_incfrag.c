
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {int tx_frags; int rx_frags; } ;



void sport_incfrag(struct sport_device *sport, int *frag, int tx)
{
 ++(*frag);
 if (tx == 1 && *frag == sport->tx_frags)
  *frag = 0;

 if (tx == 0 && *frag == sport->rx_frags)
  *frag = 0;
}
