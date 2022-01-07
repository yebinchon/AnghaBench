
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INT_IN_EP ;
 unsigned int INT_OUT_EP ;
 unsigned int ISOC_IN_EP ;
 unsigned int ISOC_OUT_EP ;

__attribute__((used)) static bool xhci_is_async_ep(unsigned int ep_type)
{
 return (ep_type != ISOC_OUT_EP && ep_type != INT_OUT_EP &&
     ep_type != ISOC_IN_EP &&
     ep_type != INT_IN_EP);
}
