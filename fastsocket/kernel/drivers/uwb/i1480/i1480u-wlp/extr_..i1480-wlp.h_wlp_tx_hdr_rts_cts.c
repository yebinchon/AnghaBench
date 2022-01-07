
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_tx_hdr {int mac_params; } ;



__attribute__((used)) static inline int wlp_tx_hdr_rts_cts(const struct wlp_tx_hdr *hdr)
{
 return (hdr->mac_params >> 7) & 0x01;
}
