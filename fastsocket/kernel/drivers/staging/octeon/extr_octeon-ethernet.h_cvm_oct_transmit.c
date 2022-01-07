
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int cvm_oct_transmit_qos (struct net_device*,void*,int,int ) ;

__attribute__((used)) static inline int cvm_oct_transmit(struct net_device *dev,
       void *work_queue_entry, int do_free)
{
 return cvm_oct_transmit_qos(dev, work_queue_entry, do_free, 0);
}
