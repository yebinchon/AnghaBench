
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 int free (char*) ;
 scalar_t__ need_bs_quote (char const) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static void sq_quote_buf(struct strbuf *dst, const char *src)
{
 char *to_free = ((void*)0);

 if (dst->buf == src)
  to_free = strbuf_detach(dst, ((void*)0));

 strbuf_addch(dst, '\'');
 while (*src) {
  size_t len = strcspn(src, "'!");
  strbuf_add(dst, src, len);
  src += len;
  while (need_bs_quote(*src)) {
   strbuf_addstr(dst, "'\\");
   strbuf_addch(dst, *src++);
   strbuf_addch(dst, '\'');
  }
 }
 strbuf_addch(dst, '\'');
 free(to_free);
}
