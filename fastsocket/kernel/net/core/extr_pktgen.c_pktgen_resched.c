
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_dev {int idle_acc; } ;
typedef int ktime_t ;


 int ktime_now () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int schedule () ;

__attribute__((used)) static void pktgen_resched(struct pktgen_dev *pkt_dev)
{
 ktime_t idle_start = ktime_now();
 schedule();
 pkt_dev->idle_acc += ktime_to_ns(ktime_sub(ktime_now(), idle_start));
}
