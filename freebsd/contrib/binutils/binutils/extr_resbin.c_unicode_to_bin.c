
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef int unichar ;
typedef int rc_uint_type ;
typedef int bfd_byte ;


 scalar_t__ reswr_alloc (int) ;
 int set_windres_bfd_content (int *,int *,int,int) ;
 int unichar_len (int const*) ;
 int windres_put_16 (int *,int *,int const) ;

__attribute__((used)) static rc_uint_type
unicode_to_bin (windres_bfd *wrbfd, rc_uint_type off, const unichar *str)
{
  rc_uint_type len = 0;

  if (str != ((void*)0))
    len = unichar_len (str);

  if (wrbfd)
    {
      bfd_byte *d;
      rc_uint_type i;
      d = (bfd_byte *) reswr_alloc ( (len + 1) * sizeof (unichar));
      for (i = 0; i < len; i++)
 windres_put_16 (wrbfd, d + (i * sizeof (unichar)), str[i]);
      windres_put_16 (wrbfd, d + (len * sizeof (unichar)), 0);
      set_windres_bfd_content (wrbfd, d, off, (len + 1) * sizeof (unichar));
    }
  off += (rc_uint_type) ((len + 1) * sizeof (unichar));

  return off;
}
