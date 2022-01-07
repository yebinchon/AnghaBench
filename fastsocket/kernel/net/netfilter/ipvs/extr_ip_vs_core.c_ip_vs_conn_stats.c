
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int conns; } ;
struct TYPE_10__ {int lock; TYPE_2__ ustats; } ;
struct ip_vs_service {TYPE_3__ stats; } ;
struct ip_vs_conn {TYPE_5__* dest; } ;
struct TYPE_11__ {int conns; } ;
struct TYPE_14__ {int lock; TYPE_4__ ustats; } ;
struct TYPE_8__ {int conns; } ;
struct TYPE_13__ {int lock; TYPE_1__ ustats; } ;
struct TYPE_12__ {TYPE_6__ stats; } ;


 TYPE_7__ ip_vs_stats ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
ip_vs_conn_stats(struct ip_vs_conn *cp, struct ip_vs_service *svc)
{
 spin_lock(&cp->dest->stats.lock);
 cp->dest->stats.ustats.conns++;
 spin_unlock(&cp->dest->stats.lock);

 spin_lock(&svc->stats.lock);
 svc->stats.ustats.conns++;
 spin_unlock(&svc->stats.lock);

 spin_lock(&ip_vs_stats.lock);
 ip_vs_stats.ustats.conns++;
 spin_unlock(&ip_vs_stats.lock);
}
