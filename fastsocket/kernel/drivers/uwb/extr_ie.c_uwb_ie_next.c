
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_ie_hdr {int length; } ;



struct uwb_ie_hdr *uwb_ie_next(void **ptr, size_t *len)
{
 struct uwb_ie_hdr *hdr;
 size_t ie_len;

 if (*len < sizeof(struct uwb_ie_hdr))
  return ((void*)0);

 hdr = *ptr;
 ie_len = sizeof(struct uwb_ie_hdr) + hdr->length;

 if (*len < ie_len)
  return ((void*)0);

 *ptr += ie_len;
 *len -= ie_len;

 return hdr;
}
