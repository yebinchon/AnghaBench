
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef scalar_t__ rc_uint_type ;


 int fatal (char*,int ,long,long,long) ;
 int filename ;
 int get_windres_bfd_content (int *,void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
read_res_data (windres_bfd *wrbfd, rc_uint_type *off, rc_uint_type omax, void *data,
        rc_uint_type size)
{
  if ((off[0] + size) > omax)
    fatal ("%s: unexpected end of file %ld/%ld %ld", filename,(long) off[0],
        (long) omax, (long) size);
  get_windres_bfd_content (wrbfd, data, off[0], size);
  off[0] += size;
}
