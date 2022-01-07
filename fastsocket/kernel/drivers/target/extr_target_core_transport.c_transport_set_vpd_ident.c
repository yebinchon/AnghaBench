
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_vpd {unsigned char device_identifier_code_set; char* device_identifier; size_t device_identifier_type; } ;


 int transport_dump_vpd_ident (struct t10_vpd*,int *,int ) ;

int
transport_set_vpd_ident(struct t10_vpd *vpd, unsigned char *page_83)
{
 static const char hex_str[] = "0123456789abcdef";
 int j = 0, i = 4;






 vpd->device_identifier_code_set = (page_83[0] & 0x0f);
 switch (vpd->device_identifier_code_set) {
 case 0x01:
  vpd->device_identifier[j++] =
    hex_str[vpd->device_identifier_type];
  while (i < (4 + page_83[3])) {
   vpd->device_identifier[j++] =
    hex_str[(page_83[i] & 0xf0) >> 4];
   vpd->device_identifier[j++] =
    hex_str[page_83[i] & 0x0f];
   i++;
  }
  break;
 case 0x02:
 case 0x03:
  while (i < (4 + page_83[3]))
   vpd->device_identifier[j++] = page_83[i++];
  break;
 default:
  break;
 }

 return transport_dump_vpd_ident(vpd, ((void*)0), 0);
}
