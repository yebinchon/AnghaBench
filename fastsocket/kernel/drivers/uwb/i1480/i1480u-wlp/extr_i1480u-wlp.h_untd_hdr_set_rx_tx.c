
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untd_hdr {int type; } ;



__attribute__((used)) static inline void untd_hdr_set_rx_tx(struct untd_hdr *hdr, int rx_tx)
{
 hdr->type = (hdr->type & ~0x04) | (rx_tx << 2);
}
