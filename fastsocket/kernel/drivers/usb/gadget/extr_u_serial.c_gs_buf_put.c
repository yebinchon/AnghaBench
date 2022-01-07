
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_put; } ;


 unsigned int gs_buf_space_avail (struct gs_buf*) ;
 int memcpy (unsigned int,char const*,unsigned int) ;

__attribute__((used)) static unsigned
gs_buf_put(struct gs_buf *gb, const char *buf, unsigned count)
{
 unsigned len;

 len = gs_buf_space_avail(gb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = gb->buf_buf + gb->buf_size - gb->buf_put;
 if (count > len) {
  memcpy(gb->buf_put, buf, len);
  memcpy(gb->buf_buf, buf+len, count - len);
  gb->buf_put = gb->buf_buf + count - len;
 } else {
  memcpy(gb->buf_put, buf, count);
  if (count < len)
   gb->buf_put += count;
  else
   gb->buf_put = gb->buf_buf;
 }

 return count;
}
