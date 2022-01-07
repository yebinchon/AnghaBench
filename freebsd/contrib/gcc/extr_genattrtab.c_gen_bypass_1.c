
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bypass_list {char const* insn; struct bypass_list* next; } ;


 struct bypass_list* all_bypasses ;
 char* attr_string (char const*,size_t) ;
 int n_bypasses ;
 struct bypass_list* oballoc (int) ;

__attribute__((used)) static void
gen_bypass_1 (const char *s, size_t len)
{
  struct bypass_list *b;

  if (len == 0)
    return;

  s = attr_string (s, len);
  for (b = all_bypasses; b; b = b->next)
    if (s == b->insn)
      return;

  b = oballoc (sizeof (struct bypass_list));
  b->insn = s;
  b->next = all_bypasses;
  all_bypasses = b;
  n_bypasses++;
}
