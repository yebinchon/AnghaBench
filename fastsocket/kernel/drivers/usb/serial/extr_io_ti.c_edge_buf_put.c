
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_put; } ;


 unsigned int edge_buf_space_avail (struct edge_buf*) ;
 int memcpy (unsigned int,char const*,unsigned int) ;

__attribute__((used)) static unsigned int edge_buf_put(struct edge_buf *eb, const char *buf,
 unsigned int count)
{
 unsigned int len;


 if (eb == ((void*)0))
  return 0;

 len = edge_buf_space_avail(eb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = eb->buf_buf + eb->buf_size - eb->buf_put;
 if (count > len) {
  memcpy(eb->buf_put, buf, len);
  memcpy(eb->buf_buf, buf+len, count - len);
  eb->buf_put = eb->buf_buf + count - len;
 } else {
  memcpy(eb->buf_put, buf, count);
  if (count < len)
   eb->buf_put += count;
  else
   eb->buf_put = eb->buf_buf;
 }

 return count;
}
