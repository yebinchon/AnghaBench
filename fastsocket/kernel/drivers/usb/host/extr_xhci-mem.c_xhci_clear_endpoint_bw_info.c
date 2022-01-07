
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_bw_info {scalar_t__ max_esit_payload; scalar_t__ type; scalar_t__ max_packet_size; scalar_t__ num_packets; scalar_t__ mult; scalar_t__ ep_interval; } ;



void xhci_clear_endpoint_bw_info(struct xhci_bw_info *bw_info)
{
 bw_info->ep_interval = 0;
 bw_info->mult = 0;
 bw_info->num_packets = 0;
 bw_info->max_packet_size = 0;
 bw_info->type = 0;
 bw_info->max_esit_payload = 0;
}
