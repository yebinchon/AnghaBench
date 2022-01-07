
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_device {int dummy; } ;
typedef size_t __u32 ;
struct TYPE_2__ {struct vhci_device* vdev; } ;


 TYPE_1__* the_controller ;

__attribute__((used)) static inline struct vhci_device *port_to_vdev(__u32 port)
{
 return &the_controller->vdev[port];
}
