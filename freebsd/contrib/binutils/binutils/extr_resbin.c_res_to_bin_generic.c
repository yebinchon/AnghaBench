
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef scalar_t__ rc_uint_type ;
typedef int bfd_byte ;


 int set_windres_bfd_content (int *,int const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static rc_uint_type
res_to_bin_generic (windres_bfd *wrbfd, rc_uint_type off, rc_uint_type length,
      const bfd_byte *data)
{
  if (wrbfd && length != 0)
    set_windres_bfd_content (wrbfd, data, off, length);
  return off + (rc_uint_type) length;
}
