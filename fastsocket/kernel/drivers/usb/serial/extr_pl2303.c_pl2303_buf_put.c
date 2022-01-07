
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl2303_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_put; } ;


 int memcpy (unsigned int,char const*,unsigned int) ;
 unsigned int pl2303_buf_space_avail (struct pl2303_buf*) ;

__attribute__((used)) static unsigned int pl2303_buf_put(struct pl2303_buf *pb, const char *buf,
       unsigned int count)
{
 unsigned int len;

 if (pb == ((void*)0))
  return 0;

 len = pl2303_buf_space_avail(pb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = pb->buf_buf + pb->buf_size - pb->buf_put;
 if (count > len) {
  memcpy(pb->buf_put, buf, len);
  memcpy(pb->buf_buf, buf+len, count - len);
  pb->buf_put = pb->buf_buf + count - len;
 } else {
  memcpy(pb->buf_put, buf, count);
  if (count < len)
   pb->buf_put += count;
  else
   pb->buf_put = pb->buf_buf;
 }

 return count;
}
