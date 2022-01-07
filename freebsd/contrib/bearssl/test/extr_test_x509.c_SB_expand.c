
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; size_t ptr; char* buf; } ;
typedef TYPE_1__ string_builder ;


 int memcpy (char*,char*,size_t) ;
 int xfree (char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static void
SB_expand(string_builder *sb, size_t extra_len)
{
 size_t nlen;
 char *nbuf;

 if (extra_len < (sb->len - sb->ptr)) {
  return;
 }
 nlen = sb->len << 1;
 if (extra_len > (nlen - sb->ptr)) {
  nlen = sb->ptr + extra_len;
 }
 nbuf = xmalloc(nlen);
 memcpy(nbuf, sb->buf, sb->ptr);
 xfree(sb->buf);
 sb->buf = nbuf;
 sb->len = nlen;
}
