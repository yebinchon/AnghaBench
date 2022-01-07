
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef scalar_t__ unichar ;
typedef int rc_uint_type ;
typedef int bfd_byte ;


 int read_res_data (int *,int*,int,int *,int) ;
 scalar_t__ windres_get_16 (int *,int *,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static unichar *
read_unistring (windres_bfd *wrbfd, rc_uint_type *off, rc_uint_type omax,
  rc_uint_type *len)
{
  unichar *s;
  bfd_byte d[2];
  unichar c;
  unichar *p;
  rc_uint_type l;
  rc_uint_type soff = off[0];

  do
    {
      read_res_data (wrbfd, &soff, omax, d, sizeof (unichar));
      c = windres_get_16 (wrbfd, d, 2);
    }
  while (c != 0);
  l = ((soff - off[0]) / sizeof (unichar));


  p = s = (unichar *) xmalloc (sizeof (unichar) * l);
  do
    {
      read_res_data (wrbfd, off, omax, d, sizeof (unichar));
      c = windres_get_16 (wrbfd, d, 2);
      *p++ = c;
    }
  while (c != 0);
  *len = l - 1;
  return s;
}
