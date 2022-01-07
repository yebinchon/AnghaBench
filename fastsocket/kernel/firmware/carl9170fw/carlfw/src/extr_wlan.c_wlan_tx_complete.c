
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cnt; int rix; scalar_t__ cookie; int queue; } ;
struct carl9170_tx_superframe {TYPE_1__ s; } ;
struct carl9170_tx_status {int success; int tries; int rix; int queue; scalar_t__ cookie; } ;


 struct carl9170_tx_status* wlan_get_tx_status_buffer () ;

void wlan_tx_complete(struct carl9170_tx_superframe *super,
        bool txs)
{
 struct carl9170_tx_status *status;

 status = wlan_get_tx_status_buffer();





 status->cookie = super->s.cookie;
 status->queue = super->s.queue;
 super->s.cookie = 0;





 status->rix = super->s.rix;
 status->tries = super->s.cnt;
 status->success = (txs) ? 1 : 0;
}
