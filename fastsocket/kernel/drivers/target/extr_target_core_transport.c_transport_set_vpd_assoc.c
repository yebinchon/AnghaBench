
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_vpd {unsigned char association; } ;


 int transport_dump_vpd_assoc (struct t10_vpd*,int *,int ) ;

int transport_set_vpd_assoc(struct t10_vpd *vpd, unsigned char *page_83)
{





 vpd->association = (page_83[1] & 0x30);
 return transport_dump_vpd_assoc(vpd, ((void*)0), 0);
}
