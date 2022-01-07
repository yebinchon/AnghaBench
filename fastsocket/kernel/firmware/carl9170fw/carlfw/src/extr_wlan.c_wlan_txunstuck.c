
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* tx_queue; } ;
struct TYPE_6__ {TYPE_2__ wlan; } ;
struct TYPE_4__ {scalar_t__ head; } ;


 TYPE_3__ fw ;
 int set_wlan_txq_dma_addr (unsigned int,int) ;

__attribute__((used)) static void wlan_txunstuck(unsigned int queue)
{
 set_wlan_txq_dma_addr(queue, ((uint32_t) fw.wlan.tx_queue[queue].head) | 1);
}
