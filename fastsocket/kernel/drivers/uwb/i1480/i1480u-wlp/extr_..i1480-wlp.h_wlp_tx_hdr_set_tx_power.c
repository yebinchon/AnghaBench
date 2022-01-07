
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_tx_hdr {int phy_params; } ;



__attribute__((used)) static inline void wlp_tx_hdr_set_tx_power(struct wlp_tx_hdr *hdr, int pwr)
{
 hdr->phy_params = (hdr->phy_params & ~0xf0) | (pwr << 4);
}
