
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_res_hdr {int header_size; int data_size; } ;
struct TYPE_3__ {void* header_size; void* data_size; } ;
typedef TYPE_1__ res_hdr ;
typedef scalar_t__ rc_uint_type ;


 scalar_t__ BIN_RES_HDR_SIZE ;
 int fatal (char*,int ,long,long) ;
 int filename ;
 int get_windres_bfd_content (int *,struct bin_res_hdr*,scalar_t__,scalar_t__) ;
 void* windres_get_32 (int *,int ,int) ;

__attribute__((used)) static void
read_res_data_hdr (windres_bfd *wrbfd, rc_uint_type *off, rc_uint_type omax,
     res_hdr *reshdr)
{
  struct bin_res_hdr brh;

  if ((off[0] + BIN_RES_HDR_SIZE) > omax)
    fatal ("%s: unexpected end of file %ld/%ld", filename,(long) off[0], (long) omax);

  get_windres_bfd_content (wrbfd, &brh, off[0], BIN_RES_HDR_SIZE);
  reshdr->data_size = windres_get_32 (wrbfd, brh.data_size, 4);
  reshdr->header_size = windres_get_32 (wrbfd, brh.header_size, 4);
  off[0] += BIN_RES_HDR_SIZE;
}
