
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_string {scalar_t__ len; int text; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
cpp_string_eq (const void *a_p, const void *b_p)
{
  const struct cpp_string *a = (const struct cpp_string *) a_p;
  const struct cpp_string *b = (const struct cpp_string *) b_p;
  return (a->len == b->len
   && memcmp (a->text, b->text, a->len) == 0);
}
