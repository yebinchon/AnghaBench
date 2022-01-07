
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_vpd {unsigned char protocol_identifier; int protocol_identifier_set; } ;


 int transport_dump_vpd_proto_id (struct t10_vpd*,int *,int ) ;

void
transport_set_vpd_proto_id(struct t10_vpd *vpd, unsigned char *page_83)
{





  if (page_83[1] & 0x80) {
  vpd->protocol_identifier = (page_83[0] & 0xf0);
  vpd->protocol_identifier_set = 1;
  transport_dump_vpd_proto_id(vpd, ((void*)0), 0);
 }
}
