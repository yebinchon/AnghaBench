
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff3_block {struct diff3_block* next; } ;



__attribute__((used)) static struct diff3_block *
reverse_diff3_blocklist (struct diff3_block *diff)
{
  register struct diff3_block *tmp, *next, *prev;

  for (tmp = diff, prev = 0; tmp; tmp = next)
    {
      next = tmp->next;
      tmp->next = prev;
      prev = tmp;
    }

  return prev;
}
