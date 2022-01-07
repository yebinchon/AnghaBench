
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_get; } ;


 unsigned int edge_buf_data_avail (struct edge_buf*) ;
 int memcpy (char*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int edge_buf_get(struct edge_buf *eb, char *buf,
 unsigned int count)
{
 unsigned int len;


 if (eb == ((void*)0))
  return 0;

 len = edge_buf_data_avail(eb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = eb->buf_buf + eb->buf_size - eb->buf_get;
 if (count > len) {
  memcpy(buf, eb->buf_get, len);
  memcpy(buf+len, eb->buf_buf, count - len);
  eb->buf_get = eb->buf_buf + count - len;
 } else {
  memcpy(buf, eb->buf_get, count);
  if (count < len)
   eb->buf_get += count;
  else
   eb->buf_get = eb->buf_buf;
 }

 return count;
}
