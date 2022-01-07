
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct TYPE_3__ {scalar_t__ data_size; int header_size; } ;
typedef TYPE_1__ res_hdr ;
typedef int rc_uint_type ;


 int BIN_RES_HDR_SIZE ;
 char* filename ;
 int fprintf (int ,char*,char*,char*) ;
 char* program_name ;
 int read_res_data_hdr (int *,int*,int,TYPE_1__*) ;
 int stderr ;
 scalar_t__ target_is_bigendian ;
 int xexit (int) ;

__attribute__((used)) static void
skip_null_resource (windres_bfd *wrbfd, rc_uint_type *off, rc_uint_type omax)
{
  res_hdr reshdr;
  read_res_data_hdr (wrbfd, off, omax, &reshdr);
  if (reshdr.data_size != 0)
    goto skip_err;
  if ((reshdr.header_size != 0x20 && ! target_is_bigendian)
    || (reshdr.header_size != 0x20000000 && target_is_bigendian))
    goto skip_err;


  off[0] += 0x20 - BIN_RES_HDR_SIZE;
  if (off[0] >= omax)
    goto skip_err;

  return;

skip_err:
  fprintf (stderr, "%s: %s: Not a valid WIN32 resource file\n", program_name,
    filename);
  xexit (1);
}
