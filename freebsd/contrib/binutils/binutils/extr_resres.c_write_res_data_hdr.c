
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_res_hdr {int header_size; int data_size; } ;
struct TYPE_3__ {int header_size; int data_size; } ;
typedef TYPE_1__ res_hdr ;
typedef scalar_t__ rc_uint_type ;


 scalar_t__ BIN_RES_HDR_SIZE ;
 int set_windres_bfd_content (int *,struct bin_res_hdr*,scalar_t__,scalar_t__) ;
 int windres_put_32 (int *,int ,int ) ;

__attribute__((used)) static rc_uint_type
write_res_data_hdr (windres_bfd *wrbfd, rc_uint_type off, res_hdr *hdr)
{
  if (wrbfd)
    {
      struct bin_res_hdr brh;
      windres_put_32 (wrbfd, brh.data_size, hdr->data_size);
      windres_put_32 (wrbfd, brh.header_size, hdr->header_size);
      set_windres_bfd_content (wrbfd, &brh, off, BIN_RES_HDR_SIZE);
    }
  return off + BIN_RES_HDR_SIZE;
}
