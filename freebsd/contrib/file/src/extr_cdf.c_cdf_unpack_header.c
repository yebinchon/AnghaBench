
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * h_master_sat; int h_num_sectors_in_master_sat; int h_secid_first_sector_in_master_sat; int h_num_sectors_in_short_sat; int h_secid_first_sector_in_short_sat; int h_min_size_standard_stream; int h_unused1; int h_secid_first_directory; int h_num_sectors_in_sat; int h_unused0; int h_short_sec_size_p2; int h_sec_size_p2; int h_byte_order; int h_version; int h_revision; int h_uuid; int h_magic; } ;
typedef TYPE_1__ cdf_header_t ;


 int CDF_UNPACK (int ) ;
 int CDF_UNPACKA (int ) ;
 size_t __arraycount (int *) ;

void
cdf_unpack_header(cdf_header_t *h, char *buf)
{
 size_t i;
 size_t len = 0;

 CDF_UNPACK(h->h_magic);
 CDF_UNPACKA(h->h_uuid);
 CDF_UNPACK(h->h_revision);
 CDF_UNPACK(h->h_version);
 CDF_UNPACK(h->h_byte_order);
 CDF_UNPACK(h->h_sec_size_p2);
 CDF_UNPACK(h->h_short_sec_size_p2);
 CDF_UNPACKA(h->h_unused0);
 CDF_UNPACK(h->h_num_sectors_in_sat);
 CDF_UNPACK(h->h_secid_first_directory);
 CDF_UNPACKA(h->h_unused1);
 CDF_UNPACK(h->h_min_size_standard_stream);
 CDF_UNPACK(h->h_secid_first_sector_in_short_sat);
 CDF_UNPACK(h->h_num_sectors_in_short_sat);
 CDF_UNPACK(h->h_secid_first_sector_in_master_sat);
 CDF_UNPACK(h->h_num_sectors_in_master_sat);
 for (i = 0; i < __arraycount(h->h_master_sat); i++)
  CDF_UNPACK(h->h_master_sat[i]);
}
