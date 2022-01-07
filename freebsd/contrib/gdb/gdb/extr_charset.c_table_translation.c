
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct translation {char const* from; char const* to; char const* (* c_target_char_has_backslash_escape ) (void*,int) ;int (* c_parse_backslash ) (void*,int,int*) ;void* convert_char_baton; int convert_char; void* c_parse_backslash_baton; void* c_target_char_has_backslash_escape_baton; } ;


 int memset (struct translation*,int ,int) ;
 int table_convert_char ;
 struct translation* xmalloc (int) ;

__attribute__((used)) static struct translation *
table_translation (const char *from, const char *to, int *table,
                   const char *(*c_target_char_has_backslash_escape)
                   (void *baton, int target_char),
                   void *c_target_char_has_backslash_escape_baton,
                   int (*c_parse_backslash) (void *baton,
                                             int host_char,
                                             int *target_char),
                   void *c_parse_backslash_baton)
{
  struct translation *t = xmalloc (sizeof (*t));

  memset (t, 0, sizeof (*t));
  t->from = from;
  t->to = to;
  t->c_target_char_has_backslash_escape = c_target_char_has_backslash_escape;
  t->c_target_char_has_backslash_escape_baton
    = c_target_char_has_backslash_escape_baton;
  t->c_parse_backslash = c_parse_backslash;
  t->c_parse_backslash_baton = c_parse_backslash_baton;
  t->convert_char = table_convert_char;
  t->convert_char_baton = (void *) table;

  return t;
}
