
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funcall {scalar_t__ arglist_len; struct funcall* next; } ;


 scalar_t__ arglist_len ;
 struct funcall* funcall_chain ;
 scalar_t__ xmalloc (int) ;

void
start_arglist (void)
{
  struct funcall *new;

  new = (struct funcall *) xmalloc (sizeof (struct funcall));
  new->next = funcall_chain;
  new->arglist_len = arglist_len;
  arglist_len = 0;
  funcall_chain = new;
}
