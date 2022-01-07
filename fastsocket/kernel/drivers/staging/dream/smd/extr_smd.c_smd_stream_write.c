
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smd_channel_t ;


 int EINVAL ;
 int ch_is_open (int *) ;
 unsigned int ch_write_buffer (int *,void**) ;
 int ch_write_done (int *,unsigned int) ;
 int memcpy (void*,unsigned char const*,unsigned int) ;
 int notify_other_smd () ;

__attribute__((used)) static int smd_stream_write(smd_channel_t *ch, const void *_data, int len)
{
 void *ptr;
 const unsigned char *buf = _data;
 unsigned xfer;
 int orig_len = len;

 if (len < 0)
  return -EINVAL;

 while ((xfer = ch_write_buffer(ch, &ptr)) != 0) {
  if (!ch_is_open(ch))
   break;
  if (xfer > len)
   xfer = len;
  memcpy(ptr, buf, xfer);
  ch_write_done(ch, xfer);
  len -= xfer;
  buf += xfer;
  if (len == 0)
   break;
 }

 notify_other_smd();

 return orig_len - len;
}
