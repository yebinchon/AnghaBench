
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int alloc; int * buf; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 int die (char*) ;

void strbuf_grow(struct strbuf *sb, size_t extra)
{
 if (sb->len + extra + 1 <= sb->len)
  die("you want to use way too much memory");
 if (!sb->alloc)
  sb->buf = ((void*)0);
 ALLOC_GROW(sb->buf, sb->len + extra + 1, sb->alloc);
}
