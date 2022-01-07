
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; } ;


 int die (char*) ;
 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_grow (struct strbuf*,int) ;

void sq_quote_argv(struct strbuf *dst, const char** argv, size_t maxlen)
{
 int i;


 strbuf_grow(dst, 255);
 for (i = 0; argv[i]; ++i) {
  strbuf_addch(dst, ' ');
  sq_quote_buf(dst, argv[i]);
  if (maxlen && dst->len > maxlen)
   die("Too many or long arguments");
 }
}
