
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; int pos; int p; } ;


 int SZ ;
 int realloc (int,int) ;
 int strncpy (int,char const*,int) ;

void buf_write(struct buffer *buf, const char *s, int len)
{
 if (buf->size - buf->pos < len) {
  buf->size += len + SZ;
  buf->p = realloc(buf->p, buf->size);
 }
 strncpy(buf->p + buf->pos, s, len);
 buf->pos += len;
}
