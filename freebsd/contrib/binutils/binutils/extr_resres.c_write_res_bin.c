
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef scalar_t__ rc_uint_type ;
typedef int rc_res_resource ;
typedef int rc_res_res_info ;
typedef int rc_res_id ;


 scalar_t__ res_to_bin (int *,scalar_t__,int const*) ;
 scalar_t__ write_res_header (int *,scalar_t__,scalar_t__,int const*,int const*,int const*) ;

__attribute__((used)) static rc_uint_type
write_res_bin (windres_bfd *wrbfd, rc_uint_type off, const rc_res_resource *res,
        const rc_res_id *type, const rc_res_id *name,
        const rc_res_res_info *resinfo)
{
  rc_uint_type noff;
  rc_uint_type datasize = 0;

  noff = res_to_bin ((windres_bfd *) ((void*)0), off, res);
  datasize = noff - off;

  off = write_res_header (wrbfd, off, datasize, type, name, resinfo);
  return res_to_bin (wrbfd, off, res);
}
