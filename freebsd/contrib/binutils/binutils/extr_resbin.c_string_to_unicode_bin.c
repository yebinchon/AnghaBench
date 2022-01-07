
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
 scalar_t__ strlen (char const*) ;
 int windres_put_16 (int *,int *,char const) ;

__attribute__((used)) static rc_uint_type
string_to_unicode_bin (windres_bfd *wrbfd, rc_uint_type off, const char *s)
{
  rc_uint_type len;

  len = (rc_uint_type) strlen (s);

  if (wrbfd)
    {
      rc_uint_type i;
      bfd_byte *hp;

      hp = (bfd_byte *) reswr_alloc ((len + 1) * sizeof (unichar));

      for (i = 0; i < len; i++)
 windres_put_16 (wrbfd, hp + i * 2, s[i]);
      windres_put_16 (wrbfd, hp + i * 2, 0);
      set_windres_bfd_content (wrbfd, hp, off, (len + 1) * sizeof (unichar));
    }
  off += (rc_uint_type) ((len + 1) * sizeof (unichar));
  return off;
}
