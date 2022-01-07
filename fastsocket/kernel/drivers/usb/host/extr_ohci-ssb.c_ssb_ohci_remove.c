
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;


 int ssb_ohci_detach (struct ssb_device*) ;

__attribute__((used)) static void ssb_ohci_remove(struct ssb_device *dev)
{
 ssb_ohci_detach(dev);
}
