
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ alloc; } ;
typedef scalar_t__ ssize_t ;



__attribute__((used)) static inline ssize_t strbuf_avail(const struct strbuf *sb) {
 return sb->alloc ? sb->alloc - sb->len - 1 : 0;
}
