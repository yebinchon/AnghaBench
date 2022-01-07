
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_tx_hdr {int mac_params; } ;



__attribute__((used)) static inline void wlp_tx_hdr_set_delivery_id_type(struct wlp_tx_hdr *hdr, int id)
{
 hdr->mac_params = (hdr->mac_params & ~0x0f) | id;
}
