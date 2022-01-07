
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {int poll_list; } ;
struct napi_struct {int poll_list; } ;


 int NET_RX_SOFTIRQ ;
 int __raise_softirq_irqoff (int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void ____napi_schedule(struct softnet_data *sd,
     struct napi_struct *napi)
{
 list_add_tail(&napi->poll_list, &sd->poll_list);
 __raise_softirq_irqoff(NET_RX_SOFTIRQ);
}
