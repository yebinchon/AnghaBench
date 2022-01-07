
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; size_t alloc; char* buf; } ;
typedef int ssize_t ;


 int read (int,char*,size_t) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

ssize_t strbuf_read(struct strbuf *sb, int fd, ssize_t hint)
{
 size_t oldlen = sb->len;
 size_t oldalloc = sb->alloc;

 strbuf_grow(sb, hint ? hint : 8192);
 for (;;) {
  ssize_t cnt;

  cnt = read(fd, sb->buf + sb->len, sb->alloc - sb->len - 1);
  if (cnt < 0) {
   if (oldalloc == 0)
    strbuf_release(sb);
   else
    strbuf_setlen(sb, oldlen);
   return -1;
  }
  if (!cnt)
   break;
  sb->len += cnt;
  strbuf_grow(sb, 8192);
 }

 sb->buf[sb->len] = '\0';
 return sb->len - oldlen;
}
