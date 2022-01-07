
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untd_hdr {int type; } ;



__attribute__((used)) static inline int untd_hdr_rx_tx(const struct untd_hdr *hdr)
{
 return (hdr->type >> 2) & 0x01;
}
