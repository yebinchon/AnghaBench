
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t alloc; size_t len; char* buf; } ;


 int assert (int) ;
 int strbuf_grow (struct strbuf*,int ) ;

__attribute__((used)) static inline void strbuf_setlen(struct strbuf *sb, size_t len) {
 if (!sb->alloc)
  strbuf_grow(sb, 0);
 assert(len < sb->alloc);
 sb->len = len;
 sb->buf[len] = '\0';
}
