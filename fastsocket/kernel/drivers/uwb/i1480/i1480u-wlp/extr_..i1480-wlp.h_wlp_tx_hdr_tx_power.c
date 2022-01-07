
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_tx_hdr {int phy_params; } ;



__attribute__((used)) static inline int wlp_tx_hdr_tx_power(const struct wlp_tx_hdr *hdr)
{
 return (hdr->phy_params >> 4) & 0x0f;
}
