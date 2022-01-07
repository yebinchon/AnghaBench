
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_tx_hdr {int phy_params; } ;
typedef enum uwb_phy_rate { ____Placeholder_uwb_phy_rate } uwb_phy_rate ;



__attribute__((used)) static inline void wlp_tx_hdr_set_phy_rate(struct wlp_tx_hdr *hdr, enum uwb_phy_rate rate)
{
 hdr->phy_params = (hdr->phy_params & ~0x0f) | rate;
}
