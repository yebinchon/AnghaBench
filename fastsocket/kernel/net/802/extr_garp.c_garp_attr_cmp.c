
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct garp_attr {scalar_t__ type; scalar_t__ dlen; int data; } ;


 int memcmp (int ,void const*,scalar_t__) ;

__attribute__((used)) static int garp_attr_cmp(const struct garp_attr *attr,
    const void *data, u8 len, u8 type)
{
 if (attr->type != type)
  return attr->type - type;
 if (attr->dlen != len)
  return attr->dlen - len;
 return memcmp(attr->data, data, len);
}
