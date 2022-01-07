
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
typedef scalar_t__ rc_uint_type ;
struct TYPE_3__ {int index; int length; int * data; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_fontdir ;
typedef int bfd_byte ;


 int set_windres_bfd_content (int *,int *,scalar_t__,int) ;
 int windres_put_16 (int *,int *,int) ;

__attribute__((used)) static rc_uint_type
res_to_bin_fontdir (windres_bfd *wrbfd, rc_uint_type off, const rc_fontdir *fontdirs)
{
  rc_uint_type start;
  int c;
  const rc_fontdir *fd;

  start = off;
  off += 2;

  for (c = 0, fd = fontdirs; fd != ((void*)0); fd = fd->next, c++)
    {
      if (wrbfd)
 {
   bfd_byte d[2];
   windres_put_16 (wrbfd, d, fd->index);
   set_windres_bfd_content (wrbfd, d, off, 2);
   if (fd->length)
     set_windres_bfd_content (wrbfd, fd->data, off + 2, fd->length);
 }
      off += (rc_uint_type) fd->length + 2;
    }

  if (wrbfd)
    {
      bfd_byte d[2];
      windres_put_16 (wrbfd, d, c);
      set_windres_bfd_content (wrbfd, d, start, 2);
    }
  return off;
}
