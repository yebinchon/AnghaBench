
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atalk_iface {struct atalk_iface* next; } ;
typedef scalar_t__ loff_t ;


 struct atalk_iface* atalk_interfaces ;

__attribute__((used)) static __inline__ struct atalk_iface *atalk_get_interface_idx(loff_t pos)
{
 struct atalk_iface *i;

 for (i = atalk_interfaces; pos && i; i = i->next)
  --pos;

 return i;
}
