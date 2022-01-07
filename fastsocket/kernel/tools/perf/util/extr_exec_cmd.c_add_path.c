
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int PATH_SEP ;
 scalar_t__ is_absolute_path (char const*) ;
 char const* make_nonrelative_path (char const*) ;
 int strbuf_addch (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

__attribute__((used)) static void add_path(struct strbuf *out, const char *path)
{
 if (path && *path) {
  if (is_absolute_path(path))
   strbuf_addstr(out, path);
  else
   strbuf_addstr(out, make_nonrelative_path(path));

  strbuf_addch(out, PATH_SEP);
 }
}
