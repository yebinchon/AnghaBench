
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef int unichar ;
typedef int rc_uint_type ;
typedef scalar_t__ bfd_byte ;


 int _ (char*) ;
 int fatal (int ) ;
 int * get_unicode (int *,scalar_t__ const*,int,int*) ;
 int toosmall (char const*) ;
 scalar_t__ windres_get_16 (int *,scalar_t__ const*,int) ;

__attribute__((used)) static void
get_version_header (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length,
      const char *key, unichar **pkey,
      rc_uint_type *len, rc_uint_type *vallen, rc_uint_type *type,
      rc_uint_type *off)
{
  if (length < 8)
    toosmall (key);

  *len = windres_get_16 (wrbfd, data, 2);
  *vallen = windres_get_16 (wrbfd, data + 2, 2);
  *type = windres_get_16 (wrbfd, data + 4, 2);

  *off = 6;

  length -= 6;
  data += 6;

  if (key == ((void*)0))
    {
      rc_uint_type sublen;

      *pkey = get_unicode (wrbfd, data, length, &sublen);
      *off += (sublen + 1) * sizeof (unichar);
    }
  else
    {
      while (1)
 {
   if (length < 2)
     toosmall (key);
   if (windres_get_16 (wrbfd, data, 2) != (bfd_byte) *key)
     fatal (_("unexpected version string"));

   *off += 2;
   length -= 2;
   data += 2;

   if (*key == '\0')
     break;

   ++key;
 }
    }

  *off = (*off + 3) &~ 3;
}
