
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int unichar ;
typedef int rc_uint_type ;
struct TYPE_5__ {TYPE_1__* strings; } ;
typedef TYPE_2__ rc_stringtable ;
typedef int bfd_byte ;
struct TYPE_4__ {int* string; scalar_t__ length; } ;


 scalar_t__ reswr_alloc (int) ;
 int set_windres_bfd_content (int *,int *,int,int) ;
 int windres_put_16 (int *,int *,int) ;

__attribute__((used)) static rc_uint_type
res_to_bin_stringtable (windres_bfd *wrbfd, rc_uint_type off,
   const rc_stringtable *st)
{
  int i;

  for (i = 0; i < 16; i++)
    {
      rc_uint_type slen, length;
      unichar *s;

      slen = (rc_uint_type) st->strings[i].length;
      s = st->strings[i].string;

      length = 2 + slen * 2;
      if (wrbfd)
 {
   bfd_byte *hp;
   rc_uint_type j;

   hp = (bfd_byte *) reswr_alloc (length);
   windres_put_16 (wrbfd, hp, slen);

      for (j = 0; j < slen; j++)
     windres_put_16 (wrbfd, hp + 2 + j * 2, s[j]);
   set_windres_bfd_content (wrbfd, hp, off, length);
    }
      off += length;
    }
  return off;
}
