
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; scalar_t__ buf; } ;


 int die (char*) ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int memmove (scalar_t__,scalar_t__,size_t) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

__attribute__((used)) static void strbuf_splice(struct strbuf *sb, size_t pos, size_t len,
       const void *data, size_t dlen)
{
 if (pos + len < pos)
  die("you want to use way too much memory");
 if (pos > sb->len)
  die("`pos' is too far after the end of the buffer");
 if (pos + len > sb->len)
  die("`pos + len' is too far after the end of the buffer");

 if (dlen >= len)
  strbuf_grow(sb, dlen - len);
 memmove(sb->buf + pos + dlen,
   sb->buf + pos + len,
   sb->len - pos - len);
 memcpy(sb->buf + pos, data, dlen);
 strbuf_setlen(sb, sb->len + dlen - len);
}
