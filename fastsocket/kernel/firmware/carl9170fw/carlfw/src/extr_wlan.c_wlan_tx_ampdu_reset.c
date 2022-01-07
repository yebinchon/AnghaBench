
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** ampdu_prev; } ;
struct TYPE_4__ {TYPE_1__ wlan; } ;


 TYPE_2__ fw ;

__attribute__((used)) static void wlan_tx_ampdu_reset(unsigned int qidx)
{
 fw.wlan.ampdu_prev[qidx] = ((void*)0);
}
