
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untd_hdr {int type; } ;
typedef enum i1480u_pkt_type { ____Placeholder_i1480u_pkt_type } i1480u_pkt_type ;



__attribute__((used)) static inline void untd_hdr_set_type(struct untd_hdr *hdr, enum i1480u_pkt_type type)
{
 hdr->type = (hdr->type & ~0x03) | type;
}
