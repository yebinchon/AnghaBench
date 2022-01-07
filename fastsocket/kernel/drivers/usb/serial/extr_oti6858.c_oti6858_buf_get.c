
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oti6858_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_get; } ;


 int memcpy (char*,unsigned int,unsigned int) ;
 unsigned int oti6858_buf_data_avail (struct oti6858_buf*) ;

__attribute__((used)) static unsigned int oti6858_buf_get(struct oti6858_buf *pb, char *buf,
     unsigned int count)
{
 unsigned int len;

 if (pb == ((void*)0))
  return 0;

 len = oti6858_buf_data_avail(pb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = pb->buf_buf + pb->buf_size - pb->buf_get;
 if (count > len) {
  memcpy(buf, pb->buf_get, len);
  memcpy(buf+len, pb->buf_buf, count - len);
  pb->buf_get = pb->buf_buf + count - len;
 } else {
  memcpy(buf, pb->buf_get, count);
  if (count < len)
   pb->buf_get += count;
  else
   pb->buf_get = pb->buf_buf;
 }

 return count;
}
