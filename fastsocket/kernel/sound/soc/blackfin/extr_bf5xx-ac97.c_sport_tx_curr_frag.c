
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {unsigned int tx_curr_frag; unsigned int tx_fragsize; } ;


 unsigned int sport_curr_offset_tx (struct sport_device*) ;

__attribute__((used)) static unsigned int sport_tx_curr_frag(struct sport_device *sport)
{
 return sport->tx_curr_frag = sport_curr_offset_tx(sport) /
   sport->tx_fragsize;
}
