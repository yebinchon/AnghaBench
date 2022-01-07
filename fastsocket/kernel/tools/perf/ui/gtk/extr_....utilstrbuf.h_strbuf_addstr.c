
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void strbuf_addstr(struct strbuf *sb, const char *s) {
 strbuf_add(sb, s, strlen(s));
}
