
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funcall {int arglist_len; struct funcall* next; } ;


 int arglist_len ;
 struct funcall* funcall_chain ;
 int xfree (struct funcall*) ;

int
end_arglist (void)
{
  int val = arglist_len;
  struct funcall *call = funcall_chain;
  funcall_chain = call->next;
  arglist_len = call->arglist_len;
  xfree (call);
  return val;
}
