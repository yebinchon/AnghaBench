
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_get; } ;


 unsigned int gs_buf_data_avail (struct gs_buf*) ;
 int memcpy (char*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned
gs_buf_get(struct gs_buf *gb, char *buf, unsigned count)
{
 unsigned len;

 len = gs_buf_data_avail(gb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = gb->buf_buf + gb->buf_size - gb->buf_get;
 if (count > len) {
  memcpy(buf, gb->buf_get, len);
  memcpy(buf+len, gb->buf_buf, count - len);
  gb->buf_get = gb->buf_buf + count - len;
 } else {
  memcpy(buf, gb->buf_get, count);
  if (count < len)
   gb->buf_get += count;
  else
   gb->buf_get = gb->buf_buf;
 }

 return count;
}
