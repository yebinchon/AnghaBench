
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smd_channel {int dummy; } ;


 unsigned int ch_read_buffer (struct smd_channel*,void**) ;
 int ch_read_done (struct smd_channel*,unsigned int) ;
 int memcpy (unsigned char*,void*,unsigned int) ;

__attribute__((used)) static int ch_read(struct smd_channel *ch, void *_data, int len)
{
 void *ptr;
 unsigned n;
 unsigned char *data = _data;
 int orig_len = len;

 while (len > 0) {
  n = ch_read_buffer(ch, &ptr);
  if (n == 0)
   break;

  if (n > len)
   n = len;
  if (_data)
   memcpy(data, ptr, n);

  data += n;
  len -= n;
  ch_read_done(ch, n);
 }

 return orig_len - len;
}
