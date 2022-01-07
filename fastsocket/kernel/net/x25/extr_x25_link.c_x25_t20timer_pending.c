
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int t20timer; } ;


 int timer_pending (int *) ;

__attribute__((used)) static inline int x25_t20timer_pending(struct x25_neigh *nb)
{
 return timer_pending(&nb->t20timer);
}
