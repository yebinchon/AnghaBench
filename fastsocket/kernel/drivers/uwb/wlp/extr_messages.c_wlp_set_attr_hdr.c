
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_attr_hdr {void* length; void* type; } ;


 void* cpu_to_le16 (size_t) ;

__attribute__((used)) static inline void wlp_set_attr_hdr(struct wlp_attr_hdr *hdr, unsigned type,
        size_t len)
{
 hdr->type = cpu_to_le16(type);
 hdr->length = cpu_to_le16(len);
}
