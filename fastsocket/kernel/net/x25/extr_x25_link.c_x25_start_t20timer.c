
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {scalar_t__ t20; int t20timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void x25_start_t20timer(struct x25_neigh *nb)
{
 mod_timer(&nb->t20timer, jiffies + nb->t20);
}
