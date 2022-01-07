
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next_heartbeat; } ;


 int HZ ;
 int heartbeat ;
 scalar_t__ jiffies ;
 TYPE_1__* nuc900_wdt ;

__attribute__((used)) static inline void nuc900_wdt_ping(void)
{
 nuc900_wdt->next_heartbeat = jiffies + heartbeat * HZ;
}
