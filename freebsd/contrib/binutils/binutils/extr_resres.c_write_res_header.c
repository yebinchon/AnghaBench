
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct TYPE_3__ {int data_size; int header_size; } ;
typedef TYPE_1__ res_hdr ;
typedef int rc_uint_type ;
typedef int rc_res_res_info ;
typedef int rc_res_id ;


 int get_id_size (int const*) ;
 int write_res_data_hdr (int *,int,TYPE_1__*) ;
 int write_res_id (int *,int,int const*) ;
 int write_res_info (int *,int,int const*) ;

__attribute__((used)) static rc_uint_type
write_res_header (windres_bfd *wrbfd, rc_uint_type off, rc_uint_type datasize,
    const rc_res_id *type, const rc_res_id *name,
    const rc_res_res_info *resinfo)
{
  res_hdr reshdr;
  reshdr.data_size = datasize;
  reshdr.header_size = 24 + get_id_size (type) + get_id_size (name);

  reshdr.header_size = (reshdr.header_size + 3) & ~3;

  off = (off + 3) & ~3;

  off = write_res_data_hdr (wrbfd, off, &reshdr);
  off = write_res_id (wrbfd, off, type);
  off = write_res_id (wrbfd, off, name);

  off = (off + 3) & ~3;

  off = write_res_info (wrbfd, off, resinfo);
  off = (off + 3) & ~3;
  return off;
}
