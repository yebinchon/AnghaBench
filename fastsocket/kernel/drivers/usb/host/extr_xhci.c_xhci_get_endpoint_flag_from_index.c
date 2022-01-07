
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int xhci_get_endpoint_flag_from_index(unsigned int ep_index)
{
 return 1 << (ep_index + 1);
}
